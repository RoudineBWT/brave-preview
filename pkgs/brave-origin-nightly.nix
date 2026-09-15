{ callPackage, fetchurl }:
let
  version = "1.97.37";
  hash = "0nxp28j2ipgp3b77f5iby3j1bsdn5z0nim7jwppd720qmkar58dp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
