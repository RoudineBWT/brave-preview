{ callPackage, fetchurl }:
let
  version = "1.101.15";
  hash = "1bwa1bkmfjzgvd7zzv3j55nry1wdhiz22m0qhi38iyzlp8kp1kxy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
