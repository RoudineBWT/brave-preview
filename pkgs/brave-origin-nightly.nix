{ callPackage, fetchurl }:
let
  version = "1.94.83";
  hash = "1sv4rlw16p4mcg71hs7wz2nbsflv5g13m7zljdwg18x2vzxnadzr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
