{ callPackage, fetchurl }:
let
  version = "1.94.89";
  hash = "1szj8s2gj195l7vph5zvppkdax6d5riksq0n28kwl4xxjkmhy0fp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
