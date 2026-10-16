{ callPackage, fetchurl }:
let
  version = "1.97.59";
  hash = "11xjfn3kdv4xwchvdxyv3zyzr0yb8ibz1bzynzv0ncqjg8yra3x2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
