{ callPackage, fetchurl }:
let
  version = "1.93.74";
  hash = "1aq803cpfbsqx8a7ri38f8z3l2ddppisx4an7i5pnmx1nqv1bj1h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
