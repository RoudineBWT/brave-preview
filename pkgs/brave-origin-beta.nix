{ callPackage, fetchurl }:
let
  version = "1.94.98";
  hash = "1k54ab8qsadfhcrdyhsbjzgkd94gz48qy3rp0pzzslzms3h1kgxs";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
