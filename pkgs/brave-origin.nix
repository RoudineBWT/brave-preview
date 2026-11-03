{ callPackage, fetchurl }:
let
  version = "1.99.54";
  hash = "0hsfff7mrwdb1315iki75fl028ck7925xqzpwyqqn9zai3ln7j45";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
