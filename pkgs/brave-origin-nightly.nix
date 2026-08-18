{ callPackage, fetchurl }:
let
  version = "1.95.80";
  hash = "1gm81gyxjq25wvva9d3wcqvn0dh27190d9wgzg4skbzs5hpyihv4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
