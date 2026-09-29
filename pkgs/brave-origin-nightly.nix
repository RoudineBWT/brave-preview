{ callPackage, fetchurl }:
let
  version = "1.98.42";
  hash = "14z1han0wg94jy3g0qsqwz2z8yl5f0y1i25zfhkjpjx6844wjnbb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
