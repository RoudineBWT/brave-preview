{ callPackage, fetchurl }:
let
  version = "1.91.78";
  hash = "1nk3c8g20fsqc0dsh4k1x25ak5vcx2cgr96w9szcilnfghbpasxm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
