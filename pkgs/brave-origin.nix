{ callPackage, fetchurl }:
let
  version = "1.91.167";
  hash = "1w30vbvi447fam3whr71b4p2hazswljc7nrdvkvr2p2yxqn8f9vk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
