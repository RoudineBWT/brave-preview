{ callPackage, fetchurl }:
let
  version = "1.94.52";
  hash = "1q7x2i5cm7bmbnndrg9l6wdkyr56qyz5vz2yvh842cx29dy36scj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
