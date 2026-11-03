{ callPackage, fetchurl }:
let
  version = "1.100.47";
  hash = "19asklcv2m040adm6af5zs03gflsgn10zd0zcvblgvk3qlnnmm7q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
