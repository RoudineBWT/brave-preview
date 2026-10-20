{ callPackage, fetchurl }:
let
  version = "1.100.16";
  hash = "1qs1bqi3qbgpllcgkdhl3v8m1mn9wdqzkxaq700b09lg4z9yx49y";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
