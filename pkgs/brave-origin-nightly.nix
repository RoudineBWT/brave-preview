{ callPackage, fetchurl }:
let
  version = "1.94.40";
  hash = "00yxx186lsaanqxyqq957sng119by4cp2vhp32n233z72qb9sk73";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
