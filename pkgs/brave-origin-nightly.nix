{ callPackage, fetchurl }:
let
  version = "1.98.34";
  hash = "0i9k2dx1qy0krrqsvmk2bvrjzi5lmdjhm36s7xfflkpxzngyj8rz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
