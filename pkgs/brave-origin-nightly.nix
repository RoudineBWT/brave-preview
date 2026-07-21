{ callPackage, fetchurl }:
let
  version = "1.94.87";
  hash = "115cix9bkl7lll8ihqgiwfi1g7gn3zz7lpxmqvdc59mzjg1jpsl6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
