{ callPackage, fetchurl }:
let
  version = "1.101.49";
  hash = "0dsj07rmbva6ibrhhzkaks9xlmqz38vkkrr036sfh8h126r71f0s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
