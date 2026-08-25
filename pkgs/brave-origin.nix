{ callPackage, fetchurl }:
let
  version = "1.94.116";
  hash = "0gx9sq48s4a18zw9wd0j9n89x8k298sglazkw1rs2rmj2mrigx9r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
