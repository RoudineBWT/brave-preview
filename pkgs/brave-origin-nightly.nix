{ callPackage, fetchurl }:
let
  version = "1.101.16";
  hash = "046kcp3781d1h6q7i9jgxb8x8a90cxs9vgwf4hlfdjw08p899y29";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
