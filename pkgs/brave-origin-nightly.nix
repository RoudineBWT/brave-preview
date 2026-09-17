{ callPackage, fetchurl }:
let
  version = "1.98.3";
  hash = "09fzdcz61vyivyv5157xxf3ka5psakmhgmvfjibyv7ylci2hj50m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
