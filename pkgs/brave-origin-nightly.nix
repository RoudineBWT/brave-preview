{ callPackage, fetchurl }:
let
  version = "1.94.82";
  hash = "1431ankdjvcj0s01ls2ywvkiwj8l4j0g5b2c66q4myjknxc834qq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
