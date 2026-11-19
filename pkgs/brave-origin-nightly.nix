{ callPackage, fetchurl }:
let
  version = "1.102.22";
  hash = "0wpgygjawy8hvnlc9fv1mq74p81pgklhk1bq6p859m1khsp2dv18";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
