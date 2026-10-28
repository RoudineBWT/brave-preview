{ callPackage, fetchurl }:
let
  version = "1.100.43";
  hash = "1nlmkqdmn4ccyxiln23jjxcp29qm43d65irqkb8wi8y9r30d2vgk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
