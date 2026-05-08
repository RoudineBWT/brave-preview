{ callPackage, fetchurl }:
let
  version = "1.91.145";
  hash = "0i7dfvj0nhil38i8gh9kwvi90yp6frh8ig3fkfa7r62jli26sari";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
