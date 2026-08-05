{ callPackage, fetchurl }:
let
  version = "1.95.43";
  hash = "1qg548p9drnavwadmrb6nz88841jd7s2h9dgv5q7axpblk9m2p09";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
