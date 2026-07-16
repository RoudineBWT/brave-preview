{ callPackage, fetchurl }:
let
  version = "1.93.120";
  hash = "1vd2p6kki3qp39bfgd9lbjdqkf6492y50cl6ff55m5vxbcvq5m4x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
