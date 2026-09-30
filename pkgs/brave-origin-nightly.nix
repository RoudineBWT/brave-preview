{ callPackage, fetchurl }:
let
  version = "1.98.44";
  hash = "1qi35jp6grdqdq5krm37i1izzmiwm3r33wh8lyr4n8kmbp2c6v02";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
