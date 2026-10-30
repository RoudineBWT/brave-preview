{ callPackage, fetchurl }:
let
  version = "1.98.63";
  hash = "1j299mhgavr25n5fb8mx4lbfzsfljmzn32b8zx42i6amxp49xggd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
