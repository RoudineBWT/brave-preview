{ callPackage, fetchurl }:
let
  version = "1.97.52";
  hash = "13cckfbvsf7rwj4f1d6987ib00mwgx5h61ii76ajybhjv52gzwzm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
