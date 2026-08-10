{ callPackage, fetchurl }:
let
  version = "1.95.53";
  hash = "0dv9xjfc063l6asbqjz19nfwc5fvx1f2cy78pd6ha53iisii6z1q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
