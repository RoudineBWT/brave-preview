{ callPackage, fetchurl }:
let
  version = "1.92.89";
  hash = "0xhf4f559z7vh440yb0bwa2kiginzvi4wj6qy5645k28wg4213df";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
