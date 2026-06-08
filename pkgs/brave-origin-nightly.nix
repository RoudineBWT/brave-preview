{ callPackage, fetchurl }:
let
  version = "1.93.39";
  hash = "1czizh0mk3xzfk0lsdr23rbpjplb0bhwyb9jcgpd4arhkqn1i85k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
