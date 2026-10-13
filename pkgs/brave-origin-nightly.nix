{ callPackage, fetchurl }:
let
  version = "1.99.37";
  hash = "04z0sr96k664k3f001avb7rb2aa0bd4simjkg75kqjqaq9lz5kkw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
