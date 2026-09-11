{ callPackage, fetchurl }:
let
  version = "1.97.29";
  hash = "1i1kql0kadiay1nw9s9gbsfapzwgij5rgxbz5imv7p77pz01syw6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
