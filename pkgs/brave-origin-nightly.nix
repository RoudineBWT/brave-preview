{ callPackage, fetchurl }:
let
  version = "1.95.71";
  hash = "0b5lh1j7z2bava7dwk180agm8w9j4d20bf6fx47kpgbwxmgqvmh3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
