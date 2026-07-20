{ callPackage, fetchurl }:
let
  version = "1.94.85";
  hash = "0389liabanxwbvvwn0lzs4k4axqrv9d1mx9phwlnwpx05q5hw6rf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
