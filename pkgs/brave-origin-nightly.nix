{ callPackage, fetchurl }:
let
  version = "1.92.4";
  hash = "158lykn4wfxzcfaxghjn2wq7ifbb9754i7kk9cbrfv314jzb99gb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
