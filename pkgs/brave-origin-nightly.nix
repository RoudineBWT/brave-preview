{ callPackage, fetchurl }:
let
  version = "1.95.37";
  hash = "1cgbjm9i8hda0m37znqvkbgfd8v06ihfypqpf7bbmai457ixvnij";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
