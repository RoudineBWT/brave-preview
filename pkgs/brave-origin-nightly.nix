{ callPackage, fetchurl }:
let
  version = "1.98.9";
  hash = "04zilg9qw89f1z34yp1ccc13av40aq9hg685g8csiq0d4d6r8dyf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
