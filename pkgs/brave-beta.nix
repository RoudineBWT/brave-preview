{ callPackage, fetchurl }:
let
  version = "1.90.114";
  hash = "1d1jjdnwaw5v7hvrkcr1p274siy73n3b8k26bh6jjpfp2ryr0drk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
