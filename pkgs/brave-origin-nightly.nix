{ callPackage, fetchurl }:
let
  version = "1.94.12";
  hash = "05vkraz4ana9d29wsf9cnj7v2p383in5jksmcn9lyxjgb9mhyii2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
