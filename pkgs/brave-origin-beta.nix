{ callPackage, fetchurl }:
let
  version = "1.91.162";
  hash = "1faxjc54hyh0ygxj2lr1g4g6j930msxhfw9pw47pmx0ldc35s5h6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
