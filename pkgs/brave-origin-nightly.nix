{ callPackage, fetchurl }:
let
  version = "1.95.9";
  hash = "0f1rjkk3wh3rz11kl74cmav0jhkfdmjgnfnvi2bkvz4804si0bwh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
