{ callPackage, fetchurl }:
let
  version = "1.100.46";
  hash = "1z6ax6h4y8far41dsynpw22w7jlpp4iwq27z8fx7zrdalvrjg0fx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
