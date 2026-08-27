{ callPackage, fetchurl }:
let
  version = "1.96.22";
  hash = "04kanw547gvc1pxf4rgijv3v0s6dng924slv8394vpifhg4csa0v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
