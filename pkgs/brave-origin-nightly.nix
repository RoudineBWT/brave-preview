{ callPackage, fetchurl }:
let
  version = "1.100.36";
  hash = "1j12wmznn6lr7v3w2cpjjkn77jwa8wad4x9f2rhrs11aqhmjanfk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
