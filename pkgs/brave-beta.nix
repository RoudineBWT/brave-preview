{ callPackage, fetchurl }:
let
  version = "1.91.138";
  hash = "03fxjg0z4gpyj86g3yw132l1sis050rcshb21i7vwqrkavlw9cfy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
