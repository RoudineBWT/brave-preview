{ callPackage, fetchurl }:
let
  version = "1.99.27";
  hash = "09d73lcaw7fr2mbgw5zb0pxssy4c8kvwxxy7vy9zzx7vzyb0kj53";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
