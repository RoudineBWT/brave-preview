{ callPackage, fetchurl }:
let
  version = "1.92.108";
  hash = "0rybhz6k26x9ckyk58rvn67xs64bjhkh8ppkgfmknmc1ypz8hq58";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
