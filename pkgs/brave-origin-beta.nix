{ callPackage, fetchurl }:
let
  version = "1.91.115";
  hash = "0bzxfzrjlijmxkrypngjn2b7rv6pf4aifwwwklklyb9flbhpgh9w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
