{ callPackage, fetchurl }:
let
  version = "1.97.44";
  hash = "0rgg8phpd927wckfi2s7v7ixid3qirrmbzzv8g5x0d0ili38h6d7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
