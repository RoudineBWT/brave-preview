{ callPackage, fetchurl }:
let
  version = "1.100.45";
  hash = "1msjd5y0nkw83c7xfqiv9ir3h79iwmr1f7qdzy5kjh7w5rl1p1f0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
