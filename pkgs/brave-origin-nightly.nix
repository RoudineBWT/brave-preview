{ callPackage, fetchurl }:
let
  version = "1.92.45";
  hash = "05bvbbbm84c0f20xd4i22y3x5n2402fw9qnv8033r5xhwigjlk4y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
