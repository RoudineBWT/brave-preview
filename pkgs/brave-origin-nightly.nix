{ callPackage, fetchurl }:
let
  version = "1.95.17";
  hash = "0zf616c98wbhlg7x9fwmnd78mgmvhd4cfgdnhrjyyz3csfgyr8gd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
