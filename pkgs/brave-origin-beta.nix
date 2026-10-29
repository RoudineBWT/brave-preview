{ callPackage, fetchurl }:
let
  version = "1.100.44";
  hash = "1ik005j2zbvgdg93nadjgkrqc4jb498sd91mb6i0hlb570mgnrgf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
