{ callPackage, fetchurl }:
let
  version = "1.92.9";
  hash = "05b445a8dzddmrd1j1vxq4hycn1jvpbv5ph3qv007y9p7p2ra10d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
