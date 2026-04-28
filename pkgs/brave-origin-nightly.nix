{ callPackage, fetchurl }:
let
  version = "1.91.123";
  hash = "071jikv6pw3pcq7389m8gmlq9fzyj4vq709gkrxq0rf42pks0r90";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
