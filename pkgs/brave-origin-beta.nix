{ callPackage, fetchurl }:
let
  version = "1.96.49";
  hash = "09dmraw9s8izliir85d7ydpdb3ccp5rvciizw9qpzcmp4v0rxzsb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
