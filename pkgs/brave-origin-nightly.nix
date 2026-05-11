{ callPackage, fetchurl }:
let
  version = "1.92.48";
  hash = "05w4lyfk1fy0zw74z62x83i6xy0s8rpz0k1jz76km1lsv6yzihyp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
