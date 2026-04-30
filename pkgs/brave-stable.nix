{ callPackage, fetchurl }:
let
  version = "1.90.118";
  hash = "04jw9b72i995g2rvr86k8izfi0wszd0qa47k08xslljrph2gyq25";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
