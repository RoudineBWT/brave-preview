{ callPackage, fetchurl }:
let
  version = "1.96.16";
  hash = "0zpk8n294sjsfnayx0l1fv8kq9sm1n6ark7g4b8wrjkf043dmybj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
