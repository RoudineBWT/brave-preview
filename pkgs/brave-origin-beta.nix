{ callPackage, fetchurl }:
let
  version = "1.93.119";
  hash = "156i5bxsvwl8xh4lamnfcvr39c22661f0594q42lg57rrd9941s2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
