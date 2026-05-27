{ callPackage, fetchurl }:
let
  version = "1.92.105";
  hash = "014n31wk4y0nrjrlhlp3fa6fpwvgw4cs0h3hha2cngy3vz0gf13k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
