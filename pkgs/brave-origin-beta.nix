{ callPackage, fetchurl }:
let
  version = "1.91.161";
  hash = "1nhx9k7cm2z2fksmjb28sqbslccri6nhldvckn0487hismg1wwcx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
