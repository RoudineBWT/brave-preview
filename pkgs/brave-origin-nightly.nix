{ callPackage, fetchurl }:
let
  version = "1.101.31";
  hash = "1g77h69hpcdrzx6ya77v0ciaavl3vj0cgsy9zdga465i4bdwvbif";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
