{ callPackage, fetchurl }:
let
  version = "1.90.113";
  hash = "0gpl386g1dj60dc8iz3fg8hbpyqh2hynljpc03a9nb3z1g95s8mn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
