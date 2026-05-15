{ callPackage, fetchurl }:
let
  version = "1.92.64";
  hash = "0151d4lw1skd41hbq5ci8wlgqga7b2jgfblvfm08ds8cyj1zgm7b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
