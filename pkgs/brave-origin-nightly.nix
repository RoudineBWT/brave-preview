{ callPackage, fetchurl }:
let
  version = "1.101.11";
  hash = "0sb0ndwb9iakscvq50kmyfgwgvz6f4822s1kq1iv8s7mqxd16s0b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
