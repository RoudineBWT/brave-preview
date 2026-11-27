{ callPackage, fetchurl }:
let
  version = "1.102.45";
  hash = "170z1aqw4prv4x24s0xgbh7p9f42ffnqmknhmril3gcanhzdisz9";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
