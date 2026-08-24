{ callPackage, fetchurl }:
let
  version = "1.95.89";
  hash = "10daz9a0qfa7jibnjy3y560byhnn7kgp6r0142xmzx5c5qwg03py";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
