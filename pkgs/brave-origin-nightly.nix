{ callPackage, fetchurl }:
let
  version = "1.96.9";
  hash = "1abi7maka1zyi2fq59r4l56x9sgd975qqi8ryw15p3mq160hkg60";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
