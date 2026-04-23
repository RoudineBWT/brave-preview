#!/usr/bin/env bash

set -e

declare -A UPDATED_VERSIONS
LAST_VERSION=""

update_channel() {
  local CHANNEL=$1
  local TARGET_FILE=$2
  local CHANNEL_LOWER="${CHANNEL,,}"
  local ASSET_PREFIX="brave-browser-${CHANNEL_LOWER}_"

  echo "Updating $CHANNEL..."

  RELEASE_DATA=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN" \
    "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" | \
    python3 -c "
import sys, json
data = json.load(sys.stdin)
results = [
  r for r in data
  if r.get('prerelease') == True
  and r.get('name') and '$CHANNEL' in r['name']
  and any(
    a['name'].startswith('$ASSET_PREFIX') and a['name'].endswith('_amd64.deb')
    for a in r.get('assets', [])
  )
]
results.sort(key=lambda r: r['published_at'], reverse=True)
print(json.dumps(results[0]) if results else 'null')
")

  if [ -z "$RELEASE_DATA" ] || [ "$RELEASE_DATA" == "null" ]; then
    echo "Error: Could not find latest release for $CHANNEL"
    return 1
  fi

  TAG_NAME=$(echo "$RELEASE_DATA" | grep -o '"tag_name":"[^"]*"' | grep -o 'v[0-9.]*')
  VERSION=${TAG_NAME#v}

  echo "Latest $CHANNEL version: $VERSION"

  ASSET_URL=$(echo "$RELEASE_DATA" | grep -o '"browser_download_url":"[^"]*'"${ASSET_PREFIX}"'[^"]*_amd64\.deb"' | grep -o 'https://[^"]*' | head -n 1)

  if [ -z "$ASSET_URL" ]; then
    ASSET_URL="https://github.com/brave/brave-browser/releases/download/v${VERSION}/${ASSET_PREFIX}${VERSION}_amd64.deb"
  fi

  echo "Asset URL: $ASSET_URL"
  echo "Prefetching SRI hash..."
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

  RELEASE_DATA=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN" \
    "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" | \
    python3 -c "
import sys, json, re
data = json.load(sys.stdin)
results = [
  r for r in data
  if r.get('prerelease') == False
  and r.get('name') and not re.search('Nightly|Beta', r['name'])
  and any(
    a['name'].endswith('_amd64.deb')
    for a in r.get('assets', [])
  )
]
results.sort(key=lambda r: r['published_at'], reverse=True)
print(json.dumps(results[0]) if results else 'null')
")

  if [ -z "$RELEASE_DATA" ] || [ "$RELEASE_DATA" == "null" ]; then
    echo "Error: Could not find latest stable release"
    return 1
  fi

  TAG_NAME=$(echo "$RELEASE_DATA" | grep -o '"tag_name":"[^"]*"' | grep -o 'v[0-9.]*')
  VERSION=${TAG_NAME#v}

  echo "Latest stable version: $VERSION"

  ASSET_URL="https://github.com/brave/brave-browser/releases/download/v${VERSION}/brave-browser_${VERSION}_amd64.deb"

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

  # Suit les redirections avec -L
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
update_origin_channel "brave-origin-beta"    "pkgs/brave-origin-beta.nix"    "$BETA_VERSION"
