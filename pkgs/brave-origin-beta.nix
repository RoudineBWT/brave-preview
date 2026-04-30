{ callPackage, fetchurl }:
let
  version = "1.91.133";
  hash = "166asg8ayrmz1gpd7c2mjv3w4m6v0ljq48jwd7fya15lhch3s7a2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
