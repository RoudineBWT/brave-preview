{ callPackage, fetchurl }:
let
  version = "1.94.111";
  hash = "1lcysvi58ffp001pzak3cwyj1vp1hkdy22vr22cdq43slhaw710z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
