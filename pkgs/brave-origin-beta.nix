{ callPackage, fetchurl }:
let
  version = "1.93.106";
  hash = "180b7362zshvpbk7sddnsdf7ic7blf441ljcf5ig1qv2v470yps6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
