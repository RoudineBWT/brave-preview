{ callPackage, fetchurl }:
let
  version = "1.93.56";
  hash = "0q802vnmy9cx9a3syxss0k0h9smg5kadljkkr71isc08pvnlg9ay";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
