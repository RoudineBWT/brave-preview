{ callPackage, fetchurl }:
let
  version = "1.93.16";
  hash = "1p3dc6nk9zb35dhbmi3c44j6h451snf3652j2pf52abr8c2zgykj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
