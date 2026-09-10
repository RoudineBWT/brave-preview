{ callPackage, fetchurl }:
let
  version = "1.97.21";
  hash = "093pqfs4nj6s176lqazd6b73cr9pdyj5r2r7h4b5sg9y0x5mzkxp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
