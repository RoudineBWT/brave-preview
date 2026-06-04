{ callPackage, fetchurl }:
let
  version = "1.93.27";
  hash = "0a9pd2aibcjd3bd6kaq4pi711lqyi5vcxsq5nl4qhxkjx8xgrll8";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
