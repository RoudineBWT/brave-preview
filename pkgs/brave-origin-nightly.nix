{ callPackage, fetchurl }:
let
  version = "1.92.24";
  hash = "1b6ca2vjj20fkx78yj7s9ilmg9pawijsgzanx5r6y1mrwm87hzs1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
