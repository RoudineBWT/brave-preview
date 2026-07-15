{ callPackage, fetchurl }:
let
  version = "1.94.69";
  hash = "1dfgj3l27a6v2rj3730bl2vj011c9miq9fy08g74hl4lmn5b50pj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
