{ callPackage, fetchurl }:
let
  version = "1.97.10";
  hash = "0rb0n0z077g3mmazazqldnjlm1szvgpwbyh0psiarwyjqvvy7arn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
