{ callPackage, fetchurl }:
let
  version = "1.92.33";
  hash = "0212mwknp1f9rps1cfd2idnm3fxgrwx106f9wkzy4g2l23g8v4mz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
