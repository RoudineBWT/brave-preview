{ callPackage, fetchurl }:
let
  version = "1.97.18";
  hash = "0iiampb4pjclgzyahmzmis4c336q0pkkjjr8fi879zgw5k68g0ka";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
