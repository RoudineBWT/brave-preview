{ callPackage, fetchurl }:
let
  version = "1.98.58";
  hash = "1byx7dmixyfvc8cnpsj2sjwzrdg0mkd2w92jp8g4jbm0r0yz7s6s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
