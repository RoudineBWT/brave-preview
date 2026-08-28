{ callPackage, fetchurl }:
let
  version = "1.95.93";
  hash = "1c4clgzlbg017yfpasjih914cqf0cl9h7xjcahdyp274729kclwj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
