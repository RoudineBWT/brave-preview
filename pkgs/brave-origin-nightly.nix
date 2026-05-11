{ callPackage, fetchurl }:
let
  version = "1.92.46";
  hash = "1x2im7rm3c2s0j0rsxzm5wyri679jr8cbxd4mm2xlw75xvy1qcmm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
