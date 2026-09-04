{ callPackage, fetchurl }:
let
  version = "1.94.121";
  hash = "0xrf9awvabss0ll6pljlm2y2qyxhhkdw6vmvk32qsh2anqvarmr1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
