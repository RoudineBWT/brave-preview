{ callPackage, fetchurl }:
let
  version = "1.91.156";
  hash = "0fsnl8fm0q58vfyyb1k8m0k1fp7j8x897if496b3k7mrw34hrssc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
