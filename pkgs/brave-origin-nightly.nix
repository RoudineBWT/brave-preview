{ callPackage, fetchurl }:
let
  version = "1.99.16";
  hash = "0pqgllhba710yh7mcfph481813f9hzsys1hm3sqpdw87l605nd92";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
