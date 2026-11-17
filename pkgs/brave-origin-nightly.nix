{ callPackage, fetchurl }:
let
  version = "1.102.14";
  hash = "1wgmfqfwsyp80dqqz4jah79bz6hbnyj8878368v5q82q25nndx29";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
