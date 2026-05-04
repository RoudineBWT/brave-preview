{ callPackage, fetchurl }:
let
  version = "1.91.136";
  hash = "0c60m1844670fi9nzf37r8inbpg83ja1cxsf2xnak742zjbfj3jb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
