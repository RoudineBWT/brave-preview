#!/usr/bin/env bash

set -e

declare -A UPDATED_VERSIONS

update_package() {
  local LABEL=$1
  local TARGET_FILE=$2
  local ASSET_PREFIX=$3

  echo "Updating $LABEL..."

  local VERSION
  VERSION=$(curl -s -H "Authorization: Bearer $GITHUB_TOKEN" \
    "https://api.github.com/repos/brave/brave-browser/releases?per_page=100" | \
    jq -r --arg prefix "$ASSET_PREFIX" '
      map(select(
        .assets | any(.name | startswith($prefix) and endswith("_amd64.deb"))
      ))
      | sort_by(.published_at)
      | reverse
      | .[0].tag_name // empty
    ' | sed 's/^v//')

  if [ -z "$VERSION" ]; then
    echo "Error: Could not find latest release for $LABEL"
    return 1
  fi

  echo "Latest $LABEL version: $VERSION"

  local ASSET_URL="https://github.com/brave/brave-browser/releases/download/v${VERSION}/${ASSET_PREFIX}${VERSION}_amd64.deb"
  echo "Asset URL: $ASSET_URL"

  local HTTP_CODE
  HTTP_CODE=$(curl -s -L -o /dev/null -w "%{http_code}" "$ASSET_URL")
  if [ "$HTTP_CODE" != "200" ]; then
    echo "Warning: $LABEL $VERSION not available (HTTP $HTTP_CODE), skipping."
    return 0
  fi

  echo "Prefetching hash..."
  local HASH
  HASH=$(nix-prefetch-url "$ASSET_URL")
  echo "Hash: $HASH"

  sed -i "s|version = \".*\";|version = \"$VERSION\";|" "$TARGET_FILE"
  sed -i "s|hash = \".*\";|hash = \"$HASH\";|" "$TARGET_FILE"

  echo "Updated $TARGET_FILE with version $VERSION and hash $HASH"
  UPDATED_VERSIONS["$LABEL"]="$VERSION"
  echo "--------------------------------------------------"
}

update_package "Brave Stable"         "pkgs/brave-stable.nix"         "brave-browser_"
update_package "Brave Beta"           "pkgs/brave-beta.nix"           "brave-browser-beta_"
update_package "Brave Nightly"        "pkgs/brave-nightly.nix"        "brave-browser-nightly_"
update_package "Brave Origin Beta"    "pkgs/brave-origin-beta.nix"    "brave-origin-beta_"
update_package "Brave Origin Nightly" "pkgs/brave-origin-nightly.nix" "brave-origin-nightly_"

echo "All done!"
echo "Updated versions:"
for key in "${!UPDATED_VERSIONS[@]}"; do
  echo "  $key: ${UPDATED_VERSIONS[$key]}"
done
