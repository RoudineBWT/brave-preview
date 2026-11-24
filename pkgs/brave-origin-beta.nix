{ callPackage, fetchurl }:
let
  version = "1.101.55";
  hash = "09ghshb56kr86s3drzb9k01zj0lqsx480ch8x9vm264w17kxrnwy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
