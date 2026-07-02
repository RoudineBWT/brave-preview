{ callPackage, fetchurl }:
let
  version = "1.94.28";
  hash = "1x42vv6401w3rbk9m1wg866h8snpm2ally99j3jybc1ma2ym2rwp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
