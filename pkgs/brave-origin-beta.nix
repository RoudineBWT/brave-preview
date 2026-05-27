{ callPackage, fetchurl }:
let
  version = "1.91.163";
  hash = "0w67xcm04p2p3n779hy4y5i1ra4gxgw2f1wp7i64vrwxs7g7ri03";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
