{ callPackage, fetchurl }:
let
  version = "1.91.158";
  hash = "0w7l9kr4iiwsf0ch8n7mki7xlrng6r7h52m9yz3d91gwjzb366wy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
