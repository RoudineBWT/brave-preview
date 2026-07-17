{ callPackage, fetchurl }:
let
  version = "1.94.79";
  hash = "1cm6mnnvrx1af9gypg3j91ij087823jsv61pq5gf3kb32c8saqs9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
