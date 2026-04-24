#!/usr/bin/env bash

set -e

declare -A UPDATED_VERSIONS
LAST_VERSION=""

# La version de brave-origin-beta est détectée automatiquement depuis GitHub

update_channel() {
  local CHANNEL=$1
  local TARGET_FILE=$2
  local CHANNEL_LOWER="${CHANNEL,,}"
  local ASSET_PREFIX="brave-browser-${CHANNEL_LOWER}_"

  echo "Updating $CHANNEL..."

  local VERSION
  VERSION=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN" \
    "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" | \
    jq -r --arg channel "$CHANNEL" --arg prefix "$ASSET_PREFIX" '
      map(select(
        .prerelease == true and
        .name != null and (.name | contains($channel)) and
        (.assets | any(.name | startswith($prefix) and endswith("_amd64.deb")))
      ))
      | sort_by(.published_at)
      | reverse
      | .[0].tag_name // empty
    ' | sed 's/^v//')

  if [ -z "$VERSION" ]; then
    echo "Error: Could not find latest release for $CHANNEL"
    return 1
  fi

  echo "Latest $CHANNEL version: $VERSION"

  local ASSET_URL="https://github.com/brave/brave-browser/releases/download/v${VERSION}/${ASSET_PREFIX}${VERSION}_amd64.deb"

  echo "Asset URL: $ASSET_URL"
  echo "Prefetching SRI hash..."
  local HASH
  HASH=$(nix-prefetch-url "$ASSET_URL")
  echo "Hash: $HASH"

  sed -i "s/version = \".*\";/version = \"$VERSION\";/" "$TARGET_FILE"
  sed -i "s/hash = \".*\";/hash = \"$HASH\";/" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $VERSION and hash $HASH"
  UPDATED_VERSIONS["$CHANNEL"]="$VERSION"
  LAST_VERSION="$VERSION"
  echo "--------------------------------------------------"
}

update_stable_channel() {
  local TARGET_FILE=$1

  echo "Updating Brave Stable..."

  local VERSION
  VERSION=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN" \
    "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" | \
    jq -r '
      map(select(
        .prerelease == false and
        .name != null and (.name | test("Nightly|Beta") | not) and
        (.assets | any(.name | endswith("_amd64.deb")))
      ))
      | sort_by(.published_at)
      | reverse
      | .[0].tag_name // empty
    ' | sed 's/^v//')

  if [ -z "$VERSION" ]; then
    echo "Error: Could not find latest stable release"
    return 1
  fi

  echo "Latest stable version: $VERSION"

  local ASSET_URL="https://github.com/brave/brave-browser/releases/download/v${VERSION}/brave-browser_${VERSION}_amd64.deb"

  echo "Asset URL: $ASSET_URL"
  echo "Prefetching SRI hash..."
  local HASH
  HASH=$(nix-prefetch-url "$ASSET_URL")
  echo "Hash: $HASH"

  sed -i "s/version = \".*\";/version = \"$VERSION\";/" "$TARGET_FILE"
  sed -i "s/hash = \".*\";/hash = \"$HASH\";/" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $VERSION and hash $HASH"
  UPDATED_VERSIONS["stable"]="$VERSION"
  echo "--------------------------------------------------"
}

update_origin_beta_auto() {
  local TARGET_FILE=$1

  echo "Updating brave-origin-beta (auto-detecting latest version)..."

  local VERSION
  VERSION=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN"     "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" |     jq -r '
      map(select(
        .prerelease == true and
        (.assets | any(.name | startswith("brave-origin-beta_") and endswith("_amd64.deb")))
      ))
      | sort_by(.published_at)
      | reverse
      | .[0].tag_name // empty
    ' | sed 's/^v//')

  if [ -z "$VERSION" ]; then
    echo "Error: Could not find latest brave-origin-beta release"
    return 1
  fi

  echo "Latest brave-origin-beta version: $VERSION"
  update_origin_channel "brave-origin-beta" "$TARGET_FILE" "$VERSION"
}

update_origin_channel() {
  local PKG_NAME=$1
  local TARGET_FILE=$2
  local PINNED_VERSION=$3

  echo "Updating $PKG_NAME (pinned to version $PINNED_VERSION)..."

  local ASSET_URL="https://github.com/brave/brave-browser/releases/download/v${PINNED_VERSION}/${PKG_NAME}_${PINNED_VERSION}_amd64.deb"

  echo "Asset URL: $ASSET_URL"

  local HTTP_CODE
  HTTP_CODE=$(curl -s -L -o /dev/null -w "%{http_code}" "$ASSET_URL")
  if [ "$HTTP_CODE" != "200" ]; then
    echo "Warning: $PKG_NAME version $PINNED_VERSION not yet available on GitHub (HTTP $HTTP_CODE), skipping."
    return 0
  fi

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

update_origin_channel "brave-origin-nightly" "pkgs/brave-origin-nightly.nix" "$NIGHTLY_VERSION"

update_origin_beta_auto "pkgs/brave-origin-beta.nix"
