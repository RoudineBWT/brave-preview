{ callPackage, fetchurl }:
let
  version = "1.92.52";
  hash = "1gdzj7mzpzq4rhn17n5f3rl989p109aj5rf7wlgyl8rkklgxybqk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
