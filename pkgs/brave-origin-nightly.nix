{ callPackage, fetchurl }:
let
  version = "1.98.13";
  hash = "05slpg4hi9b68z80yfhfly4n054c3lsxcmmfglq4z8g1b4zj2m3i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
