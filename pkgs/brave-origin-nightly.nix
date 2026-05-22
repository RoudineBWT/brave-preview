{ callPackage, fetchurl }:
let
  version = "1.92.91";
  hash = "0l9mz5g3gf0fz8n54c59w9qrqghwb72ak9jk03g1gnf9rbzavhv7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
