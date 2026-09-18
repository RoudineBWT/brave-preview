{ callPackage, fetchurl }:
let
  version = "1.98.11";
  hash = "0aj9xl9dgivcr0n4d0z0b3vd6dcw99q2yn2vifndrgwi57n1asyc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
