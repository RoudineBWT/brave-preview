{ callPackage, fetchurl }:
let
  version = "1.92.117";
  hash = "11zhn6lb7jngswr79admiglq2x6p68prj6d3jc45188xks0n1dkg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
