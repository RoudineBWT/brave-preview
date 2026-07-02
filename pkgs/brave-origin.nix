{ callPackage, fetchurl }:
let
  version = "1.92.134";
  hash = "1fvr08bvf5dxa1famaga6vdcad5d092zvh30fn60pph05b4v3bkc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
