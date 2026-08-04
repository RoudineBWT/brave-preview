{ callPackage, fetchurl }:
let
  version = "1.95.36";
  hash = "1c0wsjqm2ljz3zilvgap657766ajcwabvfhdx1l4m4ndvad44d70";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
