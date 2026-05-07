{ callPackage, fetchurl }:
let
  version = "1.92.36";
  hash = "1v4f7hcq9pyfa47xnhniaayk4nhb2f6n6h8h785gi5yicb0hp64a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
