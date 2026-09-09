{ callPackage, fetchurl }:
let
  version = "1.97.17";
  hash = "0bk6175bpwkflf04pdbrxiy2270vakl95nsq0zfww386i3qxpjw3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
