{ callPackage, fetchurl }:
let
  version = "1.94.51";
  hash = "067jck973f7522r4vzwl6r69pvz9p2cvhnd1lw3ppds40ry03bzp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
