{ callPackage, fetchurl }:
let
  version = "1.92.112";
  hash = "1ifwb02b57kzgdq6vs8wn1lzs7x04c5z7hdm2xpybyk0h9ap3pfn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
