{ callPackage, fetchurl }:
let
  version = "1.94.14";
  hash = "0i0ajblrharynylhxh282rjnb2ai57apj1ld6qbrmqha62mdhwns";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
