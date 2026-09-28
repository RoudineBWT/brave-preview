{ callPackage, fetchurl }:
let
  version = "1.97.49";
  hash = "0b66wyykb3w206p3s3qzrx95ba7dmh32pyymnj71dblh792m6gpg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
