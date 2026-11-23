{ callPackage, fetchurl }:
let
  version = "1.102.32";
  hash = "11gy5x1i36fpvknp7q87mi96z3ay2jbgwpnnbdrn76a0hvw6b26y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
