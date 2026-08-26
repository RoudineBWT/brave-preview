{ callPackage, fetchurl }:
let
  version = "1.95.91";
  hash = "0c8j2prrclynrb2vrkj8mbf1nigzs06r9h4410mm0crjdqmqcvkg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
