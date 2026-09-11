{ callPackage, fetchurl }:
let
  version = "1.97.27";
  hash = "1abb6p39c79w0rs0bcn5ama8s09v4sni70lp77p49bjlpbkxsk0s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
