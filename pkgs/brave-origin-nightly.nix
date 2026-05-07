{ callPackage, fetchurl }:
let
  version = "1.92.34";
  hash = "1544d0jndlk8kq9nnsscp6n977mf1qvb36rym2ngnbaib766pzp7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
