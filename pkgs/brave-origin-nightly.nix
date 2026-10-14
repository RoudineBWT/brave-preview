{ callPackage, fetchurl }:
let
  version = "1.99.41";
  hash = "072gik2ldq6w6yclcd18kqbixp6xifcbaxgnfx7xfh4d7rvf3qdk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
