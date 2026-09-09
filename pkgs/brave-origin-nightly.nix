{ callPackage, fetchurl }:
let
  version = "1.97.20";
  hash = "1z4ywfx9m4a9hh23imzl12y624xy60bm04p3dl0bjb4hiigvc036";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
