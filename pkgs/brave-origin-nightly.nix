{ callPackage, fetchurl }:
let
  version = "1.93.10";
  hash = "0iyys0yb94f56rwcgr0x17dlzy3n32kdm9wasb9b8avz8jwvqr7p";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
