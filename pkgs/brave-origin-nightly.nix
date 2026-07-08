{ callPackage, fetchurl }:
let
  version = "1.94.50";
  hash = "0g1pl4km81m21rwpccmjgvkgr4r7kp5fqx2dpzrs8rnv73zkbnvy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
