{ callPackage, fetchurl }:
let
  version = "1.102.33";
  hash = "01kz5vy9yccknlx4lzpzkgk0inf5svd7sr4gxpjyribk1zmcfmf2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
