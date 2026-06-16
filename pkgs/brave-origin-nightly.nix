{ callPackage, fetchurl }:
let
  version = "1.93.73";
  hash = "1frvnfdvv8ycf8lxc93hga5k9563gc7fqsw2c7k6i6w8s3hbxv07";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
