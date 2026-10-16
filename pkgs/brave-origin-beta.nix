{ callPackage, fetchurl }:
let
  version = "1.99.45";
  hash = "12xqcg44yz7sz6s5gnhixwz3z4w7ypqw1w1h27qj3pgz3y6zx0s5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
