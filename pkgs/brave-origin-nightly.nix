{ callPackage, fetchurl }:
let
  version = "1.93.103";
  hash = "0d4m1xd0yh3avz4sfd3nnllxlragirb1h2awwagz54l6i557vchf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
