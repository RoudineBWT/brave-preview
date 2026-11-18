{ callPackage, fetchurl }:
let
  version = "1.102.18";
  hash = "13k2icjqw61n6i89awpxqhjhrb0xyan3pb8sxnkg0wx4kxbxg36c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
