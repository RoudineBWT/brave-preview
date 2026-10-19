{ callPackage, fetchurl }:
let
  version = "1.99.46";
  hash = "13kz6w4512jgb93c54k4qcpa2m083j3mw5xd1f3bqan2b039gcag";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
