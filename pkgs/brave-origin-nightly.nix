{ callPackage, fetchurl }:
let
  version = "1.92.74";
  hash = "14jnhhbka7c8rrr012h4ypgm2glx7n46gcd4ph6a98bzspi71r49";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
