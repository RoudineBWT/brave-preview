{ callPackage, fetchurl }:
let
  version = "1.98.57";
  hash = "0170cs2b7sy0arid559m2zq3gx4s3992y1264ivmzgik97wg6cqc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
