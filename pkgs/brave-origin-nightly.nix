{ callPackage, fetchurl }:
let
  version = "1.99.6";
  hash = "1rwh44r7gl85xggqj74mykh437q5hikwxdv8qkv9wg209ppckcfl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
