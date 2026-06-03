{ callPackage, fetchurl }:
let
  version = "1.93.26";
  hash = "0zj4c5610fp71df037l1gpz5jamnc97cl6m6pkkcp7d17na9949s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
