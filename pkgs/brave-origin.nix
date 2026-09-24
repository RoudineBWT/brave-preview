{ callPackage, fetchurl }:
let
  version = "1.96.59";
  hash = "04snqhz5n3wq0ylvk90mkvsr9dpss999vpqc4rqzlara9fncays4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
