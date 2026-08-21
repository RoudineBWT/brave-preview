{ callPackage, fetchurl }:
let
  version = "1.96.6";
  hash = "1ay0lnlv0ksw0js7p00m38gs8qx3yclwvzdp45axvyh83klnhrz9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
