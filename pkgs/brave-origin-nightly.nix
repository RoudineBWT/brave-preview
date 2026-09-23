{ callPackage, fetchurl }:
let
  version = "1.98.24";
  hash = "1bfipizg3jjwnrdqqr5k55q5hfdrssp5s4b5462a20z1lh4sk83d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
