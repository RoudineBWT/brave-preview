{ callPackage, fetchurl }:
let
  version = "1.94.42";
  hash = "07xwavkqhsfs5d7qcxz9k62liqm2x7ljwnnaazhypd9ikv4nf4vh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
