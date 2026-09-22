{ callPackage, fetchurl }:
let
  version = "1.98.18";
  hash = "13rb5q9z02kk679xl0s17ic3q0ngydc5l8ix9r9cd8k6fi8nik69";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
