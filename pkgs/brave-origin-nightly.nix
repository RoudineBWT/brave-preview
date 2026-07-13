{ callPackage, fetchurl }:
let
  version = "1.94.61";
  hash = "1mbgicqxf4n7wgc80zlmai2qnp5zgx6i3y30n41hbbnysdz88jp1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
