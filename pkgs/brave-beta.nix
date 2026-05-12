{ callPackage, fetchurl }:
let
  version = "1.91.148";
  hash = "1cdqrjvzpfv2ircjr6ma70d81201nnp11jdvbsk2hymkwzkkxc9q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
