{ callPackage, fetchurl }:
let
  version = "1.91.105";
  hash = "0x857wf6kppaday0flx2kx6gnjpgksm7mldk1a92swmyxj414x31";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
