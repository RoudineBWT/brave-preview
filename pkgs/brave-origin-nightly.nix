{ callPackage, fetchurl }:
let
  version = "1.98.21";
  hash = "1w1lzcyb2awmywh5mf6wjvakbwyrakk2lgvan3yyvmiv8fz23960";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
