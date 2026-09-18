{ callPackage, fetchurl }:
let
  version = "1.97.43";
  hash = "03m7if4siwzwp7nyziylmf1lxfdf08qg2bqs47j1di8yvbfcf774";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
