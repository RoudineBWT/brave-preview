{ callPackage, fetchurl }:
let
  version = "1.94.2";
  hash = "0dcjbldvh0n37b41ajmjyx71l9vn7h7yvnygxhlzscvcdv8qcjdq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
