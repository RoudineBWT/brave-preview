{ callPackage, fetchurl }:
let
  version = "1.99.35";
  hash = "08n1lad38bklj1ypvfpwlajq54vcma2pq7f20h84bmp6z1vzl82l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
