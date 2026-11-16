{ callPackage, fetchurl }:
let
  version = "1.102.12";
  hash = "13s34nafl94lk6mczy7nz12n4y52w4dbx4kjqd4rpa8zr9ckiawa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
