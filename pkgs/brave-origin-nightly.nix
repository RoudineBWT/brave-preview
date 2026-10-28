{ callPackage, fetchurl }:
let
  version = "1.100.41";
  hash = "0nhpv8bi0gkm6shk17v18q1bpj03ml8vp3hx4yawhs4nknkrp23g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
