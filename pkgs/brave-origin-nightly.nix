{ callPackage, fetchurl }:
let
  version = "1.96.14";
  hash = "1s8f13ly98zwlq7jn7d9sfcd91p1jzf95gg53fj82l0w10k54m31";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
