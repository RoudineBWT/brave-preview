{ callPackage, fetchurl }:
let
  version = "1.93.136";
  hash = "0nljqrpsssssh6m5xhaqpnzs2n91fdysblwcw6jl53dc3f7mf3mf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
