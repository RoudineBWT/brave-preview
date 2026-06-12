{ callPackage, fetchurl }:
let
  version = "1.93.62";
  hash = "0phg98aqzrqlvbw9l5m72q34ifyl62z8bb768vnfba4j41ifs9f8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
