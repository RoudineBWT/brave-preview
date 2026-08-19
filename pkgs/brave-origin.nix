{ callPackage, fetchurl }:
let
  version = "1.93.137";
  hash = "0i6q78k4mxxcxmbwrsplin9iv3swl23rk6s8sv5dxs11ph3k6wmk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
