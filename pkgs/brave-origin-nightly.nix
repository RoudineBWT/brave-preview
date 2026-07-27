{ callPackage, fetchurl }:
let
  version = "1.95.12";
  hash = "1icr738j926565amvxhk1dfnqw89c45k41hl5sq95ayj4lfnbmlx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
