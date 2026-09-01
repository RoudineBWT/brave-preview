{ callPackage, fetchurl }:
let
  version = "1.96.35";
  hash = "1939c24i5my2c3h55hsqwccx1fm0w57khhfya48blz2qfim4z0gg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
