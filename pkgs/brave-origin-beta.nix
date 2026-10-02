{ callPackage, fetchurl }:
let
  version = "1.98.48";
  hash = "0np0h43bck3vfzbswbrfydg5223dyr4kagfzbvhl3cbymcgnv7kb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
