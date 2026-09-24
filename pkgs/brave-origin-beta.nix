{ callPackage, fetchurl }:
let
  version = "1.97.47";
  hash = "19ab1l5rkz4kmmn1k3zlm080jkqwqd75h3vn7s6vfqfs4ddxcf25";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
