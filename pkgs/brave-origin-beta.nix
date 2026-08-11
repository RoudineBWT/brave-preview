{ callPackage, fetchurl }:
let
  version = "1.94.107";
  hash = "1mikigdzcn8h3srwz2jsv61sh89mmv4qz6grkmq7r5vhxmbjgj54";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
