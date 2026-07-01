{ callPackage, fetchurl }:
let
  version = "1.94.23";
  hash = "1jx3j4s7zfyk5gz6x8iaa9i66dc0pdv9h0i60c3y3n91zm2hmzf0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
