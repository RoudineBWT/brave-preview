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

# ✅ NOUVELLE FONCTION : récupère le .deb origin depuis le repo APT
# mais force la VERSION à celle passée en paramètre
update_apt_channel_pinned() {
  local APT_HOST=$1
  local PKG_NAME=$2
  local TARGET_FILE=$3
  local PINNED_VERSION=$4   # ← version imposée (celle de nightly/beta)

  echo "Updating $PKG_NAME from $APT_HOST (pinned to version $PINNED_VERSION)..."

  local PACKAGES_URL="https://${APT_HOST}/dists/stable/main/binary-amd64/Packages"
  local PACKAGES
  PACKAGES=$(curl -s "$PACKAGES_URL" | tr -d '\r')

  local BLOCKS
  BLOCKS=$(echo "$PACKAGES" | awk -v RS= -v pkg="$PKG_NAME" '$1 == "Package:" && $2 == pkg')

  if [ -z "$BLOCKS" ]; then
    echo "Error: Could not find $PKG_NAME in $PACKAGES_URL"
    return 1
  fi

  # Cherche le filename pour la version exacte demandée
  local FILENAME
  FILENAME=$(echo "$BLOCKS" | awk -v ver="$PINNED_VERSION" '
    /^Version:/ { found = ($2 == ver) }
    found && /^Filename:/ { print $2; exit }
  ')

  # Si la version exacte n'est pas dans l'APT, fallback sur la plus récente dispo
  if [ -z "$FILENAME" ]; then
    echo "Warning: version $PINNED_VERSION not found in APT, using latest available"
    local FALLBACK_VERSION
    FALLBACK_VERSION=$(echo "$BLOCKS" | awk '/^Version:/ { print $2 }' | sort -V | tail -n 1)
    FILENAME=$(echo "$BLOCKS" | awk -v ver="$FALLBACK_VERSION" '
      /^Version:/ { found = ($2 == ver) }
      found && /^Filename:/ { print $2; exit }
    ')
    PINNED_VERSION="$FALLBACK_VERSION"
  fi

  local ASSET_URL="https://${APT_HOST}/${FILENAME}"

  echo "Asset URL: $ASSET_URL"
  echo "Prefetching SRI hash..."
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
update_apt_channel_pinned "brave-browser-apt-nightly.s3.brave.com" "brave-origin-nightly" "pkgs/brave-origin-nightly.nix" "$NIGHTLY_VERSION"
update_apt_channel_pinned "brave-browser-apt-beta.s3.brave.com" "brave-origin-beta" "pkgs/brave-origin-beta.nix" "$BETA_VERSION"

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
