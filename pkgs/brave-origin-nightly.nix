{ callPackage, fetchurl }:
let
  version = "1.100.37";
  hash = "17w3b135bfnvjr98mjz6pbayd4i3n1dznjx3v7dqsw58cwx1pj2m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
