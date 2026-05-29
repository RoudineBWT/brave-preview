{ callPackage, fetchurl }:
let
  version = "1.93.7";
  hash = "1b8284vsb7wvc93azkvsxims5riksswrkv826z025lvf6smkhyp8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
