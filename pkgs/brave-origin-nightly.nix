{ callPackage, fetchurl }:
let
  version = "1.92.38";
  hash = "0xqgw0nz4z571dimnzmq8gnax4anj2a96qkg87am5rbj0z4pgs1n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
