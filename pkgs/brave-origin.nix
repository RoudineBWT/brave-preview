{ callPackage, fetchurl }:
let
  version = "1.96.60";
  hash = "0ndjlpdskabxwmsi1dd9jfy8akj54bs2kcyy897bqwn9ig7ccwnb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
