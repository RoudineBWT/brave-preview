{ callPackage, fetchurl }:
let
  version = "1.98.52";
  hash = "1wap48jjrbn9ix9jy1lw1bgjn178cnc2xcvz6q35x7vqd5qix4fk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
