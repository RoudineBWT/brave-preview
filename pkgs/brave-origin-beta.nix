{ callPackage, fetchurl }:
let
  version = "1.92.116";
  hash = "1ps4wrx18brnnmivp4id2293k3rqazp2a4hzwziscg0lqwgns5aq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
