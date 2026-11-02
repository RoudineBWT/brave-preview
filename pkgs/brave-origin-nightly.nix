{ callPackage, fetchurl }:
let
  version = "1.101.13";
  hash = "00n5y5aclkizns1y42rhfpk91v1x13pniqmispq1s9fhv79y9vh7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
