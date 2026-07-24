{ callPackage, fetchurl }:
let
  version = "1.94.95";
  hash = "0nv15n45jfcnjd9fi0kbv3v36hzqh5pjsf8p3iy8wvh3nhgnqrmn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
