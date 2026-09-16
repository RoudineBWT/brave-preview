{ callPackage, fetchurl }:
let
  version = "1.97.41";
  hash = "1myh23ll601363491dy59bj9nyjr9yps45d32kn9n1anwqvhx012";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
