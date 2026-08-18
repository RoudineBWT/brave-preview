{ callPackage, fetchurl }:
let
  version = "1.94.112";
  hash = "05in37mg8cx1cbnwxxdkzi60x2s1mldvg2c0pxgcbyjnacfiflvk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
