{ callPackage, fetchurl }:
let
  version = "1.97.30";
  hash = "0bm4n5z23gnv7rfmm12h4w81bj5jkp16rzccwacjpp8rqnk4n54s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
