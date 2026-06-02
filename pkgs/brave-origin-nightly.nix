{ callPackage, fetchurl }:
let
  version = "1.93.19";
  hash = "1jmjdmlagrrljdksrwh7h851q1xycqn1q4q8drdzw9xr83ij5g2l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
