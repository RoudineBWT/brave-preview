{ callPackage, fetchurl }:
let
  version = "1.91.110";
  hash = "1p9lax9n9f86kvw6zj7ykc80p09kzczwl1am938h51wr6584pdj0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
