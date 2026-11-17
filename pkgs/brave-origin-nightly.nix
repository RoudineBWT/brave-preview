{ callPackage, fetchurl }:
let
  version = "1.102.13";
  hash = "1r1a6sxhn1kmkflvib70mjs3x53csyrqzn2yk19xvsrby974vb6m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
