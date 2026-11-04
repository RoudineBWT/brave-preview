{ callPackage, fetchurl }:
let
  version = "1.99.55";
  hash = "0szwjcbx62v1bfxi2kr1i2v66pyb1bvj694cbf2my87w1y6s86b3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
