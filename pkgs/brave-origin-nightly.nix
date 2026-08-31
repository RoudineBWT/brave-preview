{ callPackage, fetchurl }:
let
  version = "1.96.31";
  hash = "04c90lw4aszq0j38k1k2smh2r3wv6yxs56ybxnnwmgw02cjac8y4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
