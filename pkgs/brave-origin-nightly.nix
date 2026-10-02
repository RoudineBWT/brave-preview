{ callPackage, fetchurl }:
let
  version = "1.99.9";
  hash = "02m2x2n9vrp7kal3s5vk0rf3d7ggnmjhz3zzzhl3k6ykpija0rj7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
