{ callPackage, fetchurl }:
let
  version = "1.93.18";
  hash = "0jxfnz7i34vba7cqsb33m679q161k353rdy66db0zi8z0rznpy2d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
