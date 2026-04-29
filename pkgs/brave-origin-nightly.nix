{ callPackage, fetchurl }:
let
  version = "1.91.125";
  hash = "1hwhcqwlgnakm6gl4kflzz92rqlvvw02j600wwby53q80n65xss7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
