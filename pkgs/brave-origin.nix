{ callPackage, fetchurl }:
let
  version = "1.91.166";
  hash = "0vxhakkvdx3n0rhhfxl3f8frl0jxjpqkdmfh587a2l9izyl5zvjx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
