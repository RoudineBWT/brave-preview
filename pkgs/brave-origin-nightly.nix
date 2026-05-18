{ callPackage, fetchurl }:
let
  version = "1.92.72";
  hash = "134ca4v3cmkwy4m741a6c24ivzviym7p88jxldsvmpmz4aiqn4k4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
