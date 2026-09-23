{ callPackage, fetchurl }:
let
  version = "1.98.22";
  hash = "0wjz9mp9cm8max91ry9fcgld7wx62r222q78ydihp437j82inkg3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
