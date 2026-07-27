{ callPackage, fetchurl }:
let
  version = "1.95.10";
  hash = "1is4wrzrlnd7w63vzsp8lfys7v3v2q0lcrjbsbicwjbxy3a6mda2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
