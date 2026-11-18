{ callPackage, fetchurl }:
let
  version = "1.100.58";
  hash = "07f67lhk46n1wh3645xljhxyk55b4jscm8c43mz4hdkw3d6w3kjc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
