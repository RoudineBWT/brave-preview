{ callPackage, fetchurl }:
let
  version = "1.95.91";
  hash = "1jacs0n8pdmvf0mv9iys3rzl61pa1bg383rfglrk8mvz9vzqcv9a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
