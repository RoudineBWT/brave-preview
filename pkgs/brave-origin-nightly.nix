{ callPackage, fetchurl }:
let
  version = "1.95.35";
  hash = "18bz049f2v2f2h356xwxnbakg48z4sm7blzgyxqh6ik502vx80c5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
