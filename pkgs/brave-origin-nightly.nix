{ callPackage, fetchurl }:
let
  version = "1.101.5";
  hash = "1l2fn70rp9rs8i54igbi5fijavgbym2s3797cw6qwf81kvrn9cca";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
