{ callPackage, fetchurl }:
let
  version = "1.94.46";
  hash = "0lc7isl268anlzqijd11mjl0qyrjbwiycjdwkjrmz2a696vpa0b1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
