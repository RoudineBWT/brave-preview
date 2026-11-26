{ callPackage, fetchurl }:
let
  version = "1.102.44";
  hash = "0kcwla8lyakan44pn02m05cb8fsmairwb2y85bmdr740y839zvxz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
