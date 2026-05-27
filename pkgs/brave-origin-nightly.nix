{ callPackage, fetchurl }:
let
  version = "1.92.103";
  hash = "1h6bwacwp47hgk24qxhdvr53haykhzz2zgx14wn33j747lyvsn4g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
