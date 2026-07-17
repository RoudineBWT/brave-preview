{ callPackage, fetchurl }:
let
  version = "1.94.81";
  hash = "129dr0lfya1pvr2hfx1ixik1j5syqmippj1inagxaxnqbvn009vk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
