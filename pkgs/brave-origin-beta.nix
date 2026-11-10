{ callPackage, fetchurl }:
let
  version = "1.100.52";
  hash = "15b05mgk10zcq1g8m4ynwbjkksvfjfky4llsq31jcr053rfaksw8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
