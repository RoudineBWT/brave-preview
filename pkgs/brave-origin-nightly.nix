{ callPackage, fetchurl }:
let
  version = "1.93.24";
  hash = "1pzvhfxqhz2y04kg8qag740v225xcp9x734n5zqd68xfv6c0v2gd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
