{ callPackage, fetchurl }:
let
  version = "1.94.93";
  hash = "0qcvph9y7rza8x8fad2ipnw3gjq84qxa4wlpclgcgk5f2nx90vqf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
