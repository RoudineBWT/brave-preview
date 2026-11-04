{ callPackage, fetchurl }:
let
  version = "1.100.48";
  hash = "1vjq5zcfljq8x0g6fwcgigr77yyhav9ga2g1f484v6j6qz8nj0fd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
