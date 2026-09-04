{ callPackage, fetchurl }:
let
  version = "1.97.4";
  hash = "1qz4prn4gnfcxkrgsj5a8vnzzf5av38npncvvaxaks5d9dhvhilk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
