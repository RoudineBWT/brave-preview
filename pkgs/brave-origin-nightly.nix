{ callPackage, fetchurl }:
let
  version = "1.94.20";
  hash = "0gdzv7pwngbm1hhy3i4d5fl9ima1sg3gv9xm2nnfclsfkqibsfim";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
