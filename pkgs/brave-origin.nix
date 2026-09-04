{ callPackage, fetchurl }:
let
  version = "1.94.121";
  hash = "158lddmhr66f9vhk7lzyi90w92k17dixdc0rbhsm8fa101gyqxhg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
