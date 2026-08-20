{ callPackage, fetchurl }:
let
  version = "1.95.87";
  hash = "0h1d0lyc44hhyfs9964y6iy507cna4gwvfj0vc4wzk3bgrs1nvmr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
