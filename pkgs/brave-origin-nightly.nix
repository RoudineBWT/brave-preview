{ callPackage, fetchurl }:
let
  version = "1.99.25";
  hash = "0l5jhfm7fv77lrcy0s49hcjah1d2pf44v2m79pbabhbafrsnkzy8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
