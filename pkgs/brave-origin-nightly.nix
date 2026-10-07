{ callPackage, fetchurl }:
let
  version = "1.99.23";
  hash = "0dyzh2cfzk23ipyddjfs3hvwml9xccwy0kjbis4p7w36nziljfk2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
