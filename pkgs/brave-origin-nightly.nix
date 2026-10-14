{ callPackage, fetchurl }:
let
  version = "1.99.40";
  hash = "1qyv14ckhnlxg2rcdlcim4brpm6ky4y41fzwdgcgzxaw2kjfsh6a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
