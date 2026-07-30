{ callPackage, fetchurl }:
let
  version = "1.94.99";
  hash = "0c5sn3fhq139kk6ndsyznq9i16m4yar3yphkd9kj1ng9lxvjyk9m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
