{ callPackage, fetchurl }:
let
  version = "1.101.23";
  hash = "04hdwmibbif9l2hij8ndix89cpz15pxdkmh20dn7fww7rfg8fdh2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
