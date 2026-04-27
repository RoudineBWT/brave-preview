{ callPackage, fetchurl }:
let
  version = "1.91.118";
  hash = "11j4zdnx0saynpzh2ydbn8zpv9zhvj15r3scbdycfnm7m5vl9asl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
