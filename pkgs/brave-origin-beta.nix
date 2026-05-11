{ callPackage, fetchurl }:
let
  version = "1.91.147";
  hash = "0dd1i7s3k4jsplxdmazrhlfrmz1g0rz979yfbf0rzjpbmbiz8jwg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
