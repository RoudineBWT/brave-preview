{ callPackage, fetchurl }:
let
  version = "1.100.9";
  hash = "10785nlz2j6pafgzi37fnjavr5gdmipg2n0i4lh5vgsywc7z76xy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
