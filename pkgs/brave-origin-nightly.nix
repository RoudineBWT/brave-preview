{ callPackage, fetchurl }:
let
  version = "1.94.65";
  hash = "1qr6m8lkn1x74lv57kjhj3lkrabn1z6xkq60z9qvyw2sz3m4qwaj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
