{ callPackage, fetchurl }:
let
  version = "1.95.83";
  hash = "1pdx891fqnzm6p2sphcifc79nk3skx0qrlifg0l2krf50cm3d0ry";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
