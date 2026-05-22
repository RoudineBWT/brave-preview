{ callPackage, fetchurl }:
let
  version = "1.92.88";
  hash = "0051bhfjbbc25bnd20r369ksq44v7ak53chn5iplrzyrs2xra7fy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
