{ callPackage, fetchurl }:
let
  version = "1.90.115";
  hash = "0p3c6y7w078p5rw6w9lyy00zbgzwznnn9wdwa92bc429srbwjxla";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
