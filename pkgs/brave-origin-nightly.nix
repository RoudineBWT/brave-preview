{ callPackage, fetchurl }:
let
  version = "1.99.39";
  hash = "1420417pxnwfv8x8cr9wd1w1c4y18mpaj9kvdplfalhp86mp22sb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
