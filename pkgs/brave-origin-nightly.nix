{ callPackage, fetchurl }:
let
  version = "1.99.1";
  hash = "0g12j4zwayc7ysnfr577h7g00syj6dz1fhl4k8his48ry36dpndc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
