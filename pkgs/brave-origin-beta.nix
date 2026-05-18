{ callPackage, fetchurl }:
let
  version = "1.91.155";
  hash = "021wskyb8nf3yzighr1va5xb2nb85h97ic6y3my3jn5w83p3cf0j";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
