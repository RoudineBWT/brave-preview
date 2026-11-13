{ callPackage, fetchurl }:
let
  version = "1.102.8";
  hash = "1jdb68dc9nblp1jcq5w1yp05wab01p46zwsswza93h8zz6fxzcv7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
