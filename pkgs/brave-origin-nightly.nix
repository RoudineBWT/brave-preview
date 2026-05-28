{ callPackage, fetchurl }:
let
  version = "1.93.2";
  hash = "0xjl603qy0pcvd8dzpg298c30havklm5zqcdb646a4alvfp9mskx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
