{ callPackage, fetchurl }:
let
  version = "1.99.12";
  hash = "1g5fgjqga3l63h6lzi3r4p818rlp66y6s1wd7baixf5903xck5nz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
