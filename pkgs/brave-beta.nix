{ callPackage, fetchurl }:
let
  version = "1.91.155";
  hash = "0yc3g6f28afmmmkyj2xkkhjclxqh8pn6zdjz6rpyf69ffl0fkwqi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
