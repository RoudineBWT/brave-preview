{ callPackage, fetchurl }:
let
  version = "1.89.145";
  hash = "18nnzyzakhpi5vnypn6nz6bzd8fig33z5i6pdxzpg09nxqvrgcxp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
