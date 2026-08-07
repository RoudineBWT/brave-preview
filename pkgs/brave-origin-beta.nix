{ callPackage, fetchurl }:
let
  version = "1.94.105";
  hash = "0b5xnp12r1ij9s31sy7196yxa8h7bpiwhsxhrnqd5icjwdzirkf5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
