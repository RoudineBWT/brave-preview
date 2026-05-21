{ callPackage, fetchurl }:
let
  version = "1.92.85";
  hash = "1s9bsqnxzq828mb8j618b4457yx4845gji716wym55bwd91vn4wg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
