{ callPackage, fetchurl }:
let
  version = "1.90.122";
  hash = "03z89riw6fcgdclk07hjxk16invv1qg78j70rhj2jgz6nnqhbqcd";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
