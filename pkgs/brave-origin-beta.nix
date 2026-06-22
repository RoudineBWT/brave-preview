{ callPackage, fetchurl }:
let
  version = "1.92.127";
  hash = "1i9zrcf81s7g88y72mvy15a6b0jmaa5g0sfm1nynlra2y1ckc30r";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
