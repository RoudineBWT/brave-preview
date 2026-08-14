{ callPackage, fetchurl }:
let
  version = "1.95.70";
  hash = "00dmxhv68hkpdc9x7rj5cc9nc0dzq74nqj6jv7p8887xs95hy5g4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
