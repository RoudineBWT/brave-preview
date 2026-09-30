{ callPackage, fetchurl }:
let
  version = "1.98.46";
  hash = "12hq8yiz7zhcpnf0dd0fndzripc22c1lhqvq73ik7hsd0mzq0ix6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
