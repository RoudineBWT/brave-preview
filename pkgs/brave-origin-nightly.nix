{ callPackage, fetchurl }:
let
  version = "1.100.39";
  hash = "0c0zlc7sq50m4nxyw6fagf8ax7klii1w2a9ap5552a6rbln8r740";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
