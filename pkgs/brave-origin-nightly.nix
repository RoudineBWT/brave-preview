{ callPackage, fetchurl }:
let
  version = "1.102.20";
  hash = "07mjp7s4ykq72mk7r4nflcsf04jvxkq6qwj59bdmiarzncqkpz18";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
