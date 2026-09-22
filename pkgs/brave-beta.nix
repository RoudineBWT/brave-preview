{ callPackage, fetchurl }:
let
  version = "1.97.45";
  hash = "0xikgvy536p8xq8j2xprgaln5y37hhb07a2sy4sp038rnpjxyww2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
