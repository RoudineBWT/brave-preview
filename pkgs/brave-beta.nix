{ callPackage, fetchurl }:
let
  version = "1.92.122";
  hash = "1h5gf70bdin6wwzdhdcrcmsdd41d432r44b5b9z5qzaban9b4jbh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
