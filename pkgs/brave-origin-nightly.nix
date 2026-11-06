{ callPackage, fetchurl }:
let
  version = "1.101.32";
  hash = "1h3c2dpbj94a81zbc8r6w1k6bgnplzjwlj7h7ji9cp4rwcjjvkqk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
