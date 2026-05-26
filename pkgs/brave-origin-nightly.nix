{ callPackage, fetchurl }:
let
  version = "1.92.100";
  hash = "0sdpvli3gslq48w5s8fn0q2ahf7clpnn5jwxb1ngsmam2ylyizn2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
