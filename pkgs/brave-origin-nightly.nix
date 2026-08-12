{ callPackage, fetchurl }:
let
  version = "1.95.61";
  hash = "0204m2mcnacghpwgcbcl69da4js8zckjz50rwjcrh3vbfizsbcma";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
