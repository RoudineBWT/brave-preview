{ callPackage, fetchurl }:
let
  version = "1.94.66";
  hash = "154a07clzp9i4hx74h3cxdh4y708nfbwz4m1rwghvl5hi51rrrvg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
