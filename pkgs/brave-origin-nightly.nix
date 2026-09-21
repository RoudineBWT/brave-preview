{ callPackage, fetchurl }:
let
  version = "1.98.16";
  hash = "14jgcry9n2rj4cqn22cshs824ajx68c0jdyrpl5scxmxhm5ayc4c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
