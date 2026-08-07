{ callPackage, fetchurl }:
let
  version = "1.95.50";
  hash = "1shpbfbdxyfjxq507dn4h9i9rw6w39yjdgnbvaqdbzhnalzfi2gi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
