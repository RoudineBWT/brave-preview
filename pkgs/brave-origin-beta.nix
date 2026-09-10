{ callPackage, fetchurl }:
let
  version = "1.96.50";
  hash = "0spbv27ymdakmdvfd3x3s0qkdfzx7szkxkhcx0v8dy8ss2hf6mn1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
