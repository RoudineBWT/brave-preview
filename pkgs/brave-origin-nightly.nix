{ callPackage, fetchurl }:
let
  version = "1.95.52";
  hash = "1pz9y87w0s0yhk36v9i1v2p18v9p2332h2lwyyzrnnivv4mhb82q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
