{ callPackage, fetchurl }:
let
  version = "1.93.50";
  hash = "0n87y9hslhv5ka2yq4pxlxwji5d36jjdpid4fa8a6gj27d8nxhyw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
