{ callPackage, fetchurl }:
let
  version = "1.92.121";
  hash = "0zh8vyxyk85k7jg5qa89m85bgbx75ikf2jlxpdsil01wklfrasi0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
