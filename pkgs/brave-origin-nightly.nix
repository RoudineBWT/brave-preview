{ callPackage, fetchurl }:
let
  version = "1.92.84";
  hash = "0wnp2dgs0wmcgfn0hsr0icq4avjx8ds3wcr3jx1q2314ww3inwjb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
