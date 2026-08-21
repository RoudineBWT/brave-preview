{ callPackage, fetchurl }:
let
  version = "1.96.8";
  hash = "0bg0n2fizd7wy407gj9djq9pdfhk1xgxknsa5d0p3rj2h7gmnnzl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
