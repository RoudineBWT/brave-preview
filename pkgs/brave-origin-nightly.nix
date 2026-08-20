{ callPackage, fetchurl }:
let
  version = "1.96.2";
  hash = "165qim90ck3y45jjw4qvmmn1qhdsn1fxfvpn15hl1chr9bf5nxk0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
