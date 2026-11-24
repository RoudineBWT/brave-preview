{ callPackage, fetchurl }:
let
  version = "1.102.36";
  hash = "17b09hbgdff0ssv4qivjdhjg55sv287s1pk7hwypc3a4idhhp4yl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
