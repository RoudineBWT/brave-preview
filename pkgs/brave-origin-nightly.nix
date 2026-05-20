{ callPackage, fetchurl }:
let
  version = "1.92.78";
  hash = "0ml487kc3cyf5pli1d8jcvcllkqn6378fq5cf1bvz4jqb479czwi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
