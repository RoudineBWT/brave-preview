{ callPackage, fetchurl }:
let
  version = "1.96.42";
  hash = "1ica31z5wxfcdw9sa2dxkacdrzr6pvrxxqvxk1d4nqmq8ia88vnl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
