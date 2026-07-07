{ callPackage, fetchurl }:
let
  version = "1.94.44";
  hash = "0g375nqmmslqzcs70zlay545sv9f3r7qqcak2sj2jjs0y1z6gch2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
