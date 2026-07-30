{ callPackage, fetchurl }:
let
  version = "1.95.22";
  hash = "0ld52i6hgnp292vwzbhlnfphd9hhlsscaysjnmzdy0dm0s4rjqkm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
