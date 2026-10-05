{ callPackage, fetchurl }:
let
  version = "1.99.14";
  hash = "0rkzwgpdb3n4pj4n1cs37qfwznfk5vv2gs6y7pcdxl3dkcx6k0mf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
