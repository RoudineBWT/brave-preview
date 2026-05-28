{ callPackage, fetchurl }:
let
  version = "1.93.6";
  hash = "0k6q2xdz7kzna5j3x0bg26hchb34w7cgqjgmhackwr54nbvccv63";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
