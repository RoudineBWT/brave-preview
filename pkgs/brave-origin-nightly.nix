{ callPackage, fetchurl }:
let
  version = "1.97.24";
  hash = "1vnpym0hk5z5aw0mvhzv8992fjx7wnp9gq7xayvbvra3fwmnkf03";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
