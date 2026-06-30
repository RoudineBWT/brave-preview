{ callPackage, fetchurl }:
let
  version = "1.94.18";
  hash = "12ivqpfbwy696mypaf02qqd6wacfk3yhzjpnqjnhkyd88k028nrs";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
