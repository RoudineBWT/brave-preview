{ callPackage, fetchurl }:
let
  version = "1.93.35";
  hash = "0fbv0b55zkk2zyydngx28s6q9xclpcb1fhyhpagywq39fxkkvifm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
