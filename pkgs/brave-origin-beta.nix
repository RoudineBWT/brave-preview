{ callPackage, fetchurl }:
let
  version = "1.92.118";
  hash = "0lnsvhw19q7rlw9grj7076wb5x6fi9zhwdfj7css34mqw47lviri";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
