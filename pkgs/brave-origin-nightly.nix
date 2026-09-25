{ callPackage, fetchurl }:
let
  version = "1.98.31";
  hash = "0z84qn912jmipjjiqv168pmab2vz3lgwysapvg9zw6mzpcq59msk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
