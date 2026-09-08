{ callPackage, fetchurl }:
let
  version = "1.97.16";
  hash = "0xb8i2bc0ixmcirkw4a3a7p8d8vky4iwca0k62pl8mzvmbr38s3x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
