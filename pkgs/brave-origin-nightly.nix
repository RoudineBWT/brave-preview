{ callPackage, fetchurl }:
let
  version = "1.93.82";
  hash = "0g41zkp56908mxa4sn20hw8nc0qa9p36dqc41giz78368fp5dl0q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
