{ callPackage, fetchurl }:
let
  version = "1.98.30";
  hash = "0ll9svdj7w7x18ygixpkf1izkwiv7fzx8g0psl3d10bfdqyki62h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
