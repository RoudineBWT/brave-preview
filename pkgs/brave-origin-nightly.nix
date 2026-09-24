{ callPackage, fetchurl }:
let
  version = "1.98.27";
  hash = "0nybiryripw8xbd3jxkqj9g7h3c45gziw7c6id72nibdijsq2axw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
