{ callPackage, fetchurl }:
let
  version = "1.93.98";
  hash = "1fij1l3i9kzb4v24yvdsv071kc8mmglfcwlrmf1cnyy83qyb3km4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
