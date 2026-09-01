{ callPackage, fetchurl }:
let
  version = "1.96.37";
  hash = "0a8a6qp9jbv9nfya5q01gy044xbr27skr4gr3jn3pl8jgndg5jrq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
