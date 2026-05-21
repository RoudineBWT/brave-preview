{ callPackage, fetchurl }:
let
  version = "1.92.87";
  hash = "1klp7bfrlh5yrciizz3akk9amimfcvr8s06lbh38v5sfy8j1jz59";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
