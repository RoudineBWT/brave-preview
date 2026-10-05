{ callPackage, fetchurl }:
let
  version = "1.99.10";
  hash = "1vlj49z24pjg1fnwd6rardd38wii8pmqbpm0rrbf6m7r6s8hpjnm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
