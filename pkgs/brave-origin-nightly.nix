{ callPackage, fetchurl }:
let
  version = "1.94.62";
  hash = "0gpggrpyhn9micbdi5vsj7657vqsc91hmmaclm9yzj3wy4lrrsfr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
