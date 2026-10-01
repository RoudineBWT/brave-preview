{ callPackage, fetchurl }:
let
  version = "1.98.47";
  hash = "1j8rvhwnd0mg64qmwf5ywiw6ghj4snll2jzkp3r4iklig27kwgdd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
