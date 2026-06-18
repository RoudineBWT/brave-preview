{ callPackage, fetchurl }:
let
  version = "1.92.125";
  hash = "0iv91xb2sqbmb4byf2anrivlz5j73qp4qryrcizir8x01yb8jscz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
