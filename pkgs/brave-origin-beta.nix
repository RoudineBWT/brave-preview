{ callPackage, fetchurl }:
let
  version = "1.93.107";
  hash = "0gxg0m6bva92iwpskpxmn171ygwf7ak4pkzn4vz6qdwvq3qm4ak0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
