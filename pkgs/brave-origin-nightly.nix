{ callPackage, fetchurl }:
let
  version = "1.93.58";
  hash = "12id4jqzpf5y2bhr39p3h8z2b6w2s90pya0bj8npx455j3wsbh0m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
