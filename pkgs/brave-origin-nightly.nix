{ callPackage, fetchurl }:
let
  version = "1.93.8";
  hash = "07a40na87pfhdh2hc53ylhvyz2rv5kj32fgwagy96fladz5qymjc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
