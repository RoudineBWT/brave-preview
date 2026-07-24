{ callPackage, fetchurl }:
let
  version = "1.95.8";
  hash = "017lxa3abdkp3bqf2wxkbpnnpcwxzhzrlj9jl0mgj51gkgapiys2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
