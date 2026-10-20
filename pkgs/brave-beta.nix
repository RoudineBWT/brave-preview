{ callPackage, fetchurl }:
let
  version = "1.99.47";
  hash = "1mcdhbclnda8gcgmfkfybvsna54dnrixbxshiddd48dl7i6i4mpb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
