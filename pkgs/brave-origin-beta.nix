{ callPackage, fetchurl }:
let
  version = "1.93.113";
  hash = "0292ax4ra3rwxqpwh54bqs3vz01rhjq4hjkgnh51aghgsyg5hrj3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
