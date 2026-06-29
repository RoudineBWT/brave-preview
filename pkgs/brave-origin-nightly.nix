{ callPackage, fetchurl }:
let
  version = "1.94.11";
  hash = "09f2r8v24kmpspdgjfbrf0zwklcbblxy6bmhd2gx0f3q33ddrshw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
