{ callPackage, fetchurl }:
let
  version = "1.92.20";
  hash = "0gj8jj2gzagxv9gny767lhlmlqflz1w6a4jxfqmfjgwr3330s7wg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
