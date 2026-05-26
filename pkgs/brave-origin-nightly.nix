{ callPackage, fetchurl }:
let
  version = "1.92.102";
  hash = "0b46a6dxasjg40gh24qk7lax6d57xl4rkb3c6418a8c9klcrw8li";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
