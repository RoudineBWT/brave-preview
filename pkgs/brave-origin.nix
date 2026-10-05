{ callPackage, fetchurl }:
let
  version = "1.97.54";
  hash = "0a5jw441jcxshwgg3wl6n80lwc46gchwv02j31qvbzyrakymj8wr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
