{ callPackage, fetchurl }:
let
  version = "1.91.157";
  hash = "11hirs3g3i7sqs8gi91m4cd14fxjqkzkhn5kx8sfl0pyqfvh9clq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
