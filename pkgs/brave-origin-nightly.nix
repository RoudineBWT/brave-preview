{ callPackage, fetchurl }:
let
  version = "1.92.69";
  hash = "0k3ly62imfmckz6k6jl36cnhafjfkpg85wiqfg5cirp3xkyszc5m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
