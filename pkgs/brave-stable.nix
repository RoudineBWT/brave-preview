{ callPackage, fetchurl }:
let
  version = "1.98.59";
  hash = "1majdy9n9k093a2cpp7ibc09jfq0599n5bmilcvx6hrbfyzbqga7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
