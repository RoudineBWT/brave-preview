{ callPackage, fetchurl }:
let
  version = "1.100.4";
  hash = "0v98f0q542fx9ghgv1inmf6wbh01nrd2m1dz46z7v9q1gc74id7b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
