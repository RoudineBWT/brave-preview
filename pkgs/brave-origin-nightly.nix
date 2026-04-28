{ callPackage, fetchurl }:
let
  version = "1.91.121";
  hash = "04l48yfmq2lh759ymkvrigxy2qr1ndbkr9xjiyfmk4rfmvr6qp0a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
