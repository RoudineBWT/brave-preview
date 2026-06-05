{ callPackage, fetchurl }:
let
  version = "1.92.115";
  hash = "0jvaq5ssmlifkfdv2x0c03f40h8rcz3a6wbg0s1yp02g8z37cwfz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
