{ callPackage, fetchurl }:
let
  version = "1.98.54";
  hash = "1pl01x5sxz3yndxr6inj5w99ckym96306pas208lyn38lvd6swpg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
