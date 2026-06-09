{ callPackage, fetchurl }:
let
  version = "1.93.47";
  hash = "07wdi632shhqmdgs952jihnfk23s3r7n0zqy54gd9f00fyq0a01x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
