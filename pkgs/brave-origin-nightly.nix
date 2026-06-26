{ callPackage, fetchurl }:
let
  version = "1.94.9";
  hash = "0d84ggk1biw2mgxy0zj60i1rcfyvladh4vb86ajiqj03lwhm6lpd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
