{ callPackage, fetchurl }:
let
  version = "1.97.8";
  hash = "0dj4a1ygbdwvkiw62xsyzkwk3ca51s52gimycmynm2n9sdpf0krj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
