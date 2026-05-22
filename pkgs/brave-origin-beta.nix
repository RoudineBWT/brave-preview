{ callPackage, fetchurl }:
let
  version = "1.91.159";
  hash = "15c6d1s3j1ysnyy4nxij71b5zwc1wdd50m2hagfzgf4x3kjr6saq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
