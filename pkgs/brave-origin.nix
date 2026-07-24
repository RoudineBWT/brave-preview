{ callPackage, fetchurl }:
let
  version = "1.92.144";
  hash = "1wbbqa9h3kskb6r18p2iab4dinkw2lhh2cj4f31g4966brf5cpi8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
