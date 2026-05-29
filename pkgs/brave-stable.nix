{ callPackage, fetchurl }:
let
  version = "1.91.165";
  hash = "0n658vrbsxdksjaqh98bc104wngn2v0dcw3kq2d3ai6gbzv5d06b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
