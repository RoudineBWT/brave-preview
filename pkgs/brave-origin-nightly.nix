{ callPackage, fetchurl }:
let
  version = "1.95.40";
  hash = "0cz3hhgkkjgq0qm6lz7fyp1p4bgd4v6jsirkxagj4rbglmq1kmkv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
