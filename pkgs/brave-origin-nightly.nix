{ callPackage, fetchurl }:
let
  version = "1.95.31";
  hash = "18m8a9xdakls8aj6bv7yq73n2x7m67q6y0jpakkj5wxziqxk10jj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
