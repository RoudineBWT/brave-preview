{ callPackage, fetchurl }:
let
  version = "1.93.121";
  hash = "193yxbx9v2dar8rpa69szr1y7x1yqimh5wla2fslahr3w7kvg2kf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
