#!/usr/bin/env bash

set -e

COMMIT=false
for arg in "$@"; do
  case $arg in
    --commit) COMMIT=true ;;
  esac
done

declare -A UPDATED_VERSIONS

update_channel() {
  local CHANNEL=$1
  local TARGET_FILE=$2

  echo "Updating $CHANNEL..."

  local ASSET_PREFIX="brave-browser-${CHANNEL,,}_"
  RELEASE_DATA=$(curl -s "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" | jq -r --arg channel "$CHANNEL" --arg prefix "$ASSET_PREFIX" \
    'map(select(.name? and (.name | contains($channel)) and .assets? and (.assets | any(.name | startswith($prefix) and endswith("_amd64.deb")))))
    | sort_by(.published_at)
    | reverse
    | .[0]
  ')

  if [ -z "$RELEASE_DATA" ] || [ "$RELEASE_DATA" == "null" ]; then
    echo "Error: Could not find latest release for $CHANNEL"
    return 1
  fi

  TAG_NAME=$(echo "$RELEASE_DATA" | jq -r '.tag_name')
  VERSION=${TAG_NAME#v}

  echo "Latest $CHANNEL version: $VERSION"

  ASSET_URL=$(echo "$RELEASE_DATA" | jq -r --arg prefix "$ASSET_PREFIX" \
    '.assets[] | select(.name | startswith($prefix) and endswith("_amd64.deb")) | .browser_download_url' | head -n 1)

  if [ -z "$ASSET_URL" ]; then
    echo "Error: Could not find amd64 .deb asset for version $VERSION"
    return 1
  fi

  echo "Asset URL: $ASSET_URL"
  echo "Prefetching SRI hash..."
  HASH=$(nix-prefetch-url "$ASSET_URL")
  echo "Hash: $HASH"

  sed -i "s/version = \".*\";/version = \"$VERSION\";/" "$TARGET_FILE"
  sed -i "s/hash = \".*\";/hash = \"$HASH\";/" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $VERSION and hash $HASH"
  UPDATED_VERSIONS["$CHANNEL"]="$VERSION"
  echo "--------------------------------------------------"

  # Return version for reuse
  LAST_VERSION="$VERSION"
}

update_stable_channel() {
  local TARGET_FILE=$1

  echo "Updating Brave Stable..."

  RELEASE_DATA=$(curl -s "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" | jq -r '
    map(select(.name? and (.name | test("Nightly|Beta") | not) and .assets? and (.assets | any(.name | endswith("_amd64.deb")))))
    | sort_by(.published_at)
    | reverse
    | .[0]
  ')

  if [ -z "$RELEASE_DATA" ] || [ "$RELEASE_DATA" == "null" ]; then
    echo "Error: Could not find latest stable release"
    return 1
  fi

  TAG_NAME=$(echo "$RELEASE_DATA" | jq -r '.tag_name')
  VERSION=${TAG_NAME#v}

  echo "Latest stable version: $VERSION"

  ASSET_URL=$(echo "$RELEASE_DATA" | jq -r '.assets[] | select(.name | endswith("_amd64.deb") and (startswith("brave-browser_"))) | .browser_download_url' | head -n 1)

  if [ -z "$ASSET_URL" ]; then
    echo "Error: Could not find amd64 .deb asset for stable version $VERSION"
    return 1
  fi

  echo "Asset URL: $ASSET_URL"
  echo "Prefetching SRI hash..."
  HASH=$(nix-prefetch-url "$ASSET_URL")
  echo "Hash: $HASH"

  sed -i "s/version = \".*\";/version = \"$VERSION\";/" "$TARGET_FILE"
  sed -i "s/hash = \".*\";/hash = \"$HASH\";/" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $VERSION and hash $HASH"
  UPDATED_VERSIONS["stable"]="$VERSION"
  echo "--------------------------------------------------"
}

update_origin_channel() {
  local PKG_NAME=$1
  local TARGET_FILE=$2
  local PINNED_VERSION=$3

  echo "Updating $PKG_NAME (pinned to version $PINNED_VERSION)..."

  local ASSET_URL="https://github.com/brave/brave-browser/releases/download/v${PINNED_VERSION}/${PKG_NAME}_${PINNED_VERSION}_amd64.deb"

  echo "Asset URL: $ASSET_URL"
  echo "Prefetching hash..."
  local HASH
  HASH=$(nix-prefetch-url "$ASSET_URL")
  echo "Hash: $HASH"

  sed -i "s|version = \".*\";|version = \"$PINNED_VERSION\";|" "$TARGET_FILE"
  sed -i "s|hash = \".*\";|hash = \"$HASH\";|" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $PINNED_VERSION and hash $HASH"
  UPDATED_VERSIONS["$PKG_NAME"]="$PINNED_VERSION"
  echo "--------------------------------------------------"
}
# --- Exécution ---

update_channel "Nightly" "pkgs/brave-nightly.nix"
NIGHTLY_VERSION="$LAST_VERSION"

update_channel "Beta" "pkgs/brave-beta.nix"
BETA_VERSION="$LAST_VERSION"

update_stable_channel "pkgs/brave-stable.nix"

# ✅ Origin suit la même version que son channel parent
update_origin_channel "brave-origin-nightly" "pkgs/brave-origin-nightly.nix" "$NIGHTLY_VERSION"
update_origin_channel "brave-origin-beta" "pkgs/brave-origin-beta.nix" "$BETA_VERSION"

if [ "$COMMIT" = true ]; then
  git config --global user.email "github-actions[bot]@users.noreply.github.com"
  git config --global user.name "github-actions[bot]"

  MSG="chore: update brave versions"
  for channel in "${!UPDATED_VERSIONS[@]}"; do
    MSG="$MSG — $channel ${UPDATED_VERSIONS[$channel]}"
  done

  git add pkgs/*.nix
  git commit -m "$MSG"
  echo "Committed: $MSG"
fi
