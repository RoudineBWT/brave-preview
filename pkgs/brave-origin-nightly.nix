{ callPackage, fetchurl }:
let
  version = "1.102.25";
  hash = "1g30m2h5bd8m8p4d50xrl3n5n4z1w7i269slgm40zzgs1w4h707q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
