{ callPackage, fetchurl }:
let
  version = "1.102.40";
  hash = "15vjsnx2jyqmsx1czzvgcn4m1l2r1i1x68zgsap1ls1z6vbhvmwm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
