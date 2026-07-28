{ callPackage, fetchurl }:
let
  version = "1.95.13";
  hash = "0l2fnnjx284sjg2ycd5vfzngm4ayrjfv4z1r7qbz436r1hghd5cg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
