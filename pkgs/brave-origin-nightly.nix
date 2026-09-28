{ callPackage, fetchurl }:
let
  version = "1.98.38";
  hash = "129kfbxya3f2zv97f8g486skg15fbj0na5xg8p0pr56xaxd0bdyh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
