{ callPackage, fetchurl }:
let
  version = "1.97.13";
  hash = "0xkzxj1i5jwadiclwwvpvx2wdjh3f95475rzkrz3ny6nvcrmdv92";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
