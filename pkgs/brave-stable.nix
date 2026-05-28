{ callPackage, fetchurl }:
let
  version = "1.90.128";
  hash = "1z2paw0bzphzbi8cf8zcs9pqn3kllypfxy5bfz154a9v0g0aj4q4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
