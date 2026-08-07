{ callPackage, fetchurl }:
let
  version = "1.95.49";
  hash = "00py3s0chcs9dy2gkjjlxka90zpzhvp542iqx92y1lpcf1yg1d4z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
