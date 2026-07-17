{ callPackage, fetchurl }:
let
  version = "1.94.78";
  hash = "0gkfi8vnihy17cl41m36yx0iym1mz6bmyjvi03jy8nqignznyw3k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
