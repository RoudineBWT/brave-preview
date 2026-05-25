{ callPackage, fetchurl }:
let
  version = "1.92.93";
  hash = "0g5r24bfhx0xjqifzfzkz1w219k2ybsy523ryfl2kanjc5f82qhx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
