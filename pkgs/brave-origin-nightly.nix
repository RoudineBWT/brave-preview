{ callPackage, fetchurl }:
let
  version = "1.102.41";
  hash = "1pflrwff0ivdnq65a406ggxvigpf8yp8c5cvlmsix99snbh7ls37";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
