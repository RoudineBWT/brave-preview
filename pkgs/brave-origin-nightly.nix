{ callPackage, fetchurl }:
let
  version = "1.101.3";
  hash = "0xdkkcdl4jy3fsrpcnv3p68cxl7dr5s21pi7mgzj9glr1779svxw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
