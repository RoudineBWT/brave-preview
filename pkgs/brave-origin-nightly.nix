{ callPackage, fetchurl }:
let
  version = "1.96.19";
  hash = "1g0f4033iyqs79s32kb8dbdqjf2x3lswrhxdaznsgg8x3m7b723s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
