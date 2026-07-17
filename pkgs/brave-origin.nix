{ callPackage, fetchurl }:
let
  version = "1.92.141";
  hash = "06wbm18lxyjvxq2zpvf8d47sn8f571d8jnd122vnh5ainbhf7msq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
