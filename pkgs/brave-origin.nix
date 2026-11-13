{ callPackage, fetchurl }:
let
  version = "1.100.56";
  hash = "06z66sk7d1hbgyaf8k0b2lzz84ql9a6n7kli9znnfb1qvmg87b17";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
