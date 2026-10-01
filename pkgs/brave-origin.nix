{ callPackage, fetchurl }:
let
  version = "1.97.53";
  hash = "1y62m8cdsac61xpcsfh7aqnjba3x7jmjkhd5q1yvzf303n07an8p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
