{ callPackage, fetchurl }:
let
  version = "1.91.151";
  hash = "13bhn2vndikh7f1l0gfiazzgarn56i8h50d25iz0m7sfg455477l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
