{ callPackage, fetchurl }:
let
  version = "1.101.53";
  hash = "1wyx6dxw9rb5slzkm9zj990c9vi4kbn29hkx13liphrbmawwlf4d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
