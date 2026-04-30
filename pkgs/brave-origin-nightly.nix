{ callPackage, fetchurl }:
let
  version = "1.92.6";
  hash = "0cr3jlbhkqzaj4k3qll0hk0nhwm3k77p9hb6pjcn1544pkf80qa7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
