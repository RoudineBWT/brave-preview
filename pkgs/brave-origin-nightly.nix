{ callPackage, fetchurl }:
let
  version = "1.101.30";
  hash = "1j619mbr2yazhvhr4vaai2a0p4xbjypp1w8df5zmm3vw2rahyn30";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
