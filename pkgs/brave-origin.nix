{ callPackage, fetchurl }:
let
  version = "1.93.126";
  hash = "0jv6x4gncr749f2h1qa02q9dawjlmcddk2as5wrdywmaalgliz9c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
