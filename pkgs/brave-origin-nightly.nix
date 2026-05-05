{ callPackage, fetchurl }:
let
  version = "1.92.21";
  hash = "1v61h33gjj591mkvmddh4r9svw09jx9hnl8pgvl0qdc3rjw29adh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
