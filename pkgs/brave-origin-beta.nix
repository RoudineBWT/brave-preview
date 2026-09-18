{ callPackage, fetchurl }:
let
  version = "1.97.43";
  hash = "1sg1p8wgs60bdfsh4r0xkh82b61il64cb8izqw6vlca0ciizxlml";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
