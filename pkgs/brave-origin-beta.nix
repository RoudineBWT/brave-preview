{ callPackage, fetchurl }:
let
  version = "1.96.48";
  hash = "1z6a4xbg3fbg9ad8r4dzm81dk6hw75h3si8sfhxy0xxqjhni0pnk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
