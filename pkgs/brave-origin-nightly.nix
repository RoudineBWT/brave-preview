{ callPackage, fetchurl }:
let
  version = "1.96.13";
  hash = "0aa1g9pd5jhai2cp129ivdisnai6am5v82bxwwrgbb3idacnyflr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
