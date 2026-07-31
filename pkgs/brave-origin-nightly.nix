{ callPackage, fetchurl }:
let
  version = "1.95.27";
  hash = "0h1l2rzg1pnxgv6vvj3y56az9gmr0m50h5b0avihx2q2pw2k1fz6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
