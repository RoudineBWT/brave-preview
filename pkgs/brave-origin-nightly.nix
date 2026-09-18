{ callPackage, fetchurl }:
let
  version = "1.98.8";
  hash = "1g5iyibj2rjgvkg15p2nc1mal8nrlppyfmgikm2zkn7pv9n93hcw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
