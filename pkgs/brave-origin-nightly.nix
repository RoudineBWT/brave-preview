{ callPackage, fetchurl }:
let
  version = "1.92.59";
  hash = "08b3pciwcvkv5sxd3bikdxsk9q1irxim6vj506hnavj99xnfghzz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
