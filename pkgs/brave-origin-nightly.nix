{ callPackage, fetchurl }:
let
  version = "1.95.65";
  hash = "0442dq6nx6yp6pblm4fw9bjn78ns4n6v1y8ivvqi5l4ki0mqnwfw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
