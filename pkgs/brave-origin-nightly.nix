{ callPackage, fetchurl }:
let
  version = "1.92.76";
  hash = "149d2gsrvlp6bz1gbx3m7685qs6pg0bi8z4ln0rw6liw0imig69d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
