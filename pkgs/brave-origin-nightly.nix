{ callPackage, fetchurl }:
let
  version = "1.93.69";
  hash = "0n0rfcd26jkfk43vq0s3ng40kbmvb09j9yf7wrfm918h1bjjwm6f";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
