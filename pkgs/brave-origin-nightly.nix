{ callPackage, fetchurl }:
let
  version = "1.95.56";
  hash = "0cand23kndyq4lii2az3hyqac118yfzkxrqq71wbyk3dc1gsy6l3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
