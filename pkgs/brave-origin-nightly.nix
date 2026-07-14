{ callPackage, fetchurl }:
let
  version = "1.94.68";
  hash = "17sci57bqk91g3pc649rpfpj2qims89zwdmwij1sgf5bqvmr039x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
