{ callPackage, fetchurl }:
let
  version = "1.102.10";
  hash = "0lyl7xkfpn8q2qm086x1cjzl84azr4x9pwn4diishifzrxagnx0x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
