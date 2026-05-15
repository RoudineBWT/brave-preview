{ callPackage, fetchurl }:
let
  version = "1.92.67";
  hash = "1wc9jrrqzf4f63x5prrybsfxasc1v6hd85jmxlwycjc1mhivrf0j";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
