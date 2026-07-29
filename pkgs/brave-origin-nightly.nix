{ callPackage, fetchurl }:
let
  version = "1.95.20";
  hash = "1vxvp69pcf0qzq4j562zqy91vinsxwf3q80lpil99ffv7z8y5x6f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
