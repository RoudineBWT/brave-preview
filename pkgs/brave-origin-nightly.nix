{ callPackage, fetchurl }:
let
  version = "1.95.62";
  hash = "121ibjwkkghj45jnd4mnqfpylb2n4jy6wj1wbc63d2miv6gbx21v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
