{ callPackage, fetchurl }:
let
  version = "1.92.58";
  hash = "1xfnlrvi1mprrgym7z3nhhlinf6prapzpidpsfg5rzqm9ag1v112";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
