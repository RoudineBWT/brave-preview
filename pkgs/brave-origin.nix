{ callPackage, fetchurl }:
let
  version = "0.0.0"; # sera rempli par update.sh
  hash = "0000000000000000000000000000000000000000000000000000";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
