{ callPackage, fetchurl }:
let
  version = "1.91.178";
  hash = "0gwjczanqznnvcnrkwh1a4c1awixakdwsz189m4gk292cgsgz9ay";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
