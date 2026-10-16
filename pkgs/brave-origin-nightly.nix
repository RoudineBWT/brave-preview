{ callPackage, fetchurl }:
let
  version = "1.100.7";
  hash = "1hhcyhmnx5i9rswx9p4wl2a9vps4qmq6rq3ajbpjj6rqja5xd5ln";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
