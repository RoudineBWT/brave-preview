{ callPackage, fetchurl }:
let
  version = "1.92.73";
  hash = "000djdhscjg9qsy9pyq922md7vmdwks2pgkz947y4ldb1lvgpidd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
