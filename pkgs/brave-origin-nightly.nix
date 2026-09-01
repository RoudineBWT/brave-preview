{ callPackage, fetchurl }:
let
  version = "1.96.34";
  hash = "0idjivxnn5lhq4yfcpqigs2c83n58n5zh7skj009p8g6d3561fmd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
