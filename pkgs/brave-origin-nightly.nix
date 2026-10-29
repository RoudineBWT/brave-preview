{ callPackage, fetchurl }:
let
  version = "1.101.2";
  hash = "0xwx30gi5g3sc1ix2g4kawr2l1yz0qz7a7hyf65fl7qnc785dmic";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
