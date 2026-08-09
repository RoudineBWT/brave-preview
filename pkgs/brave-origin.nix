{ callPackage, fetchurl }:
let
  version = "1.93.135";
  hash = "1vwggp84dmlpgfbybr2yjfrxa98rpqff4ivcrivif01jsrs0q5qr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
