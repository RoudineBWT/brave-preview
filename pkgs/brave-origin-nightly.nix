{ callPackage, fetchurl }:
let
  version = "1.98.43";
  hash = "1dcyg2wbpvibdisiyzmpx36hhxsjfa25fwv3xbc6i3iypr68zf1a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
