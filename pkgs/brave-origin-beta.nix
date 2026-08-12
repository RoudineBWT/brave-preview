{ callPackage, fetchurl }:
let
  version = "1.94.108";
  hash = "1vv8gqbcakhxx84r2r7vlnsnv8rfyrs1131dghjl3hqbkp2zmhi2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
