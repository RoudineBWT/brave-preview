{ callPackage, fetchurl }:
let
  version = "1.93.116";
  hash = "1dkdkc5zmklcjap9h80f0f59ff7i1gfxir4gqgk8qmadjjk67hnq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
