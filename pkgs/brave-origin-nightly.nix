{ callPackage, fetchurl }:
let
  version = "1.102.48";
  hash = "120nizk3d7j61mmnwdarx5nsbzfamqg7fij18mzsrj2xy0wfsv2h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
