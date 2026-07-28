{ callPackage, fetchurl }:
let
  version = "1.95.14";
  hash = "0l6nsj4mqym04dxs2yngvjxrbk6facw89kgb2zp23fpn8bk4z3rw";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
