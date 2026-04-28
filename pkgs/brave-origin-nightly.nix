{ callPackage, fetchurl }:
let
  version = "1.91.119";
  hash = "1lx5rfjbll4hiai4r4jmq6lbcd0rmafnwig49imylllcm17dsx8x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
