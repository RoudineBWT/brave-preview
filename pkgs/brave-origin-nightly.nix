{ callPackage, fetchurl }:
let
  version = "1.92.41";
  hash = "1zswmsmjm0xg1wkj581w6an4fwq8bf23al34csy300j4r3g232kf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
