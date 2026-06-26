{ callPackage, fetchurl }:
let
  version = "1.94.6";
  hash = "0byr73bx0aflfgd4nsplzqipk8baxgvv5amq25gjh097qpv12fg8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
