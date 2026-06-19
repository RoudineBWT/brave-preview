{ callPackage, fetchurl }:
let
  version = "1.92.126";
  hash = "1z8d2ml1y48sg8c9rcw0bzgl2zx64xph68bh094jcrpm6phdi89n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
