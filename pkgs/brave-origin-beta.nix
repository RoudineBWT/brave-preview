{ callPackage, fetchurl }:
let
  version = "1.99.44";
  hash = "0q450c9clwy5dv0cr7ff470zmjnz6jc0gsksi6ra1d0216jca1pz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
