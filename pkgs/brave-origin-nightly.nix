{ callPackage, fetchurl }:
let
  version = "1.97.31";
  hash = "074avrq2wba4za0lywc5x0y8cy4x9j455rb323hxsk1l47kdjc6h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
