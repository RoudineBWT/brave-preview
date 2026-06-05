{ callPackage, fetchurl }:
let
  version = "1.92.115";
  hash = "134p850072r6vq79b5mrfbc1hlf0mcivmmx2iclxw3fnc8ls2p4z";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
