{ callPackage, fetchurl }:
let
  version = "1.99.7";
  hash = "09smvi964p5y0fh6dd9brqx3qznr69fdf836w0gxxspzbkvsnz20";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
