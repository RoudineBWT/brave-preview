{ callPackage, fetchurl }:
let
  version = "1.92.15";
  hash = "04dz2gqja5d78a22lws0ikm9hdvhwn3kcmrlxdrhhgwbac6mzpm2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
