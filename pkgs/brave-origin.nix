{ callPackage, fetchurl }:
let
  version = "1.98.59";
  hash = "07ibr6m96imq0ihmafhqxaq4hvlqbqv11q8x4qm2c55nchp2fkid";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
