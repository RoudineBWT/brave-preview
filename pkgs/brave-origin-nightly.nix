{ callPackage, fetchurl }:
let
  version = "1.92.2";
  hash = "0lqi6rr8i55xlcw8yhh012mjr458jrr8z7x0q8szhg8iaqr249nm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
