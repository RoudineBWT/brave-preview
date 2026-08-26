{ callPackage, fetchurl }:
let
  version = "1.96.17";
  hash = "0xspak5rxcyzgv6ghlghasdm61gg7w4xvc162dwbyqidfgs63hil";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
