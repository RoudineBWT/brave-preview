{ callPackage, fetchurl }:
let
  version = "1.99.57";
  hash = "03kkiyyja78c7lhac5pyaxk2g54xg8p3cnfxzns55yp5l17avcac";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
