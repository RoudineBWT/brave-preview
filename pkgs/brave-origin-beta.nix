{ callPackage, fetchurl }:
let
  version = "1.98.56";
  hash = "0850bqgpgwijivgwq6dibzwmfcniqqkr3jv9l2g3iamwr0j90lab";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
