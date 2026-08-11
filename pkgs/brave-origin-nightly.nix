{ callPackage, fetchurl }:
let
  version = "1.95.57";
  hash = "1lc2aylzmannll29wq9fm0jfsk4fy47h3c8wc5z41pijrfynsmf7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
