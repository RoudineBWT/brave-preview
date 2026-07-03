{ callPackage, fetchurl }:
let
  version = "1.94.34";
  hash = "0v1lsf9rw5sssq52nzp7wrgrjabks2yax5pbqigyl134x45523ck";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
