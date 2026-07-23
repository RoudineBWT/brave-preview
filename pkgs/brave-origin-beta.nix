{ callPackage, fetchurl }:
let
  version = "1.94.94";
  hash = "0205slwjb2s6z1fj7hp7hyb45cpy798pl9cr2hir4bgqksb3sjik";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
