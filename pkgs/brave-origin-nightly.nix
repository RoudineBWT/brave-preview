{ callPackage, fetchurl }:
let
  version = "1.100.19";
  hash = "1wdyrf7a9wn6aj0a97xds11snyv17g7l9f9f538h0kylgvy4vxi0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
