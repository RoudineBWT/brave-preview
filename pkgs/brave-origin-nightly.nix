{ callPackage, fetchurl }:
let
  version = "1.101.44";
  hash = "0c2fa53dyblfp4vpr20a4gyr3g3hklca0dwcizc529z0pg68paay";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
