{ callPackage, fetchurl }:
let
  version = "1.96.5";
  hash = "0a484ap29hrpcafg1kb4bhs2iiy21bn9900ghqn1x3galpl2rk11";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
