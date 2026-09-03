{ callPackage, fetchurl }:
let
  version = "1.97.1";
  hash = "1dhcjsfmd0fxag93x6j158i280sr69ljlg5bdcmc6305c3q6bkw9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
