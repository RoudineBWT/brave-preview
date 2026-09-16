{ callPackage, fetchurl }:
let
  version = "1.95.102";
  hash = "05zjqpzikn13155zd436f1340a6jmijms5xcilbzgz4cv25snv99";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
