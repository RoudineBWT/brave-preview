{ callPackage, fetchurl }:
let
  version = "1.90.120";
  hash = "195k76kqdbyxih5q6sn7f252jjg7qldpgcv7cbh1bz2f98yswyzn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
