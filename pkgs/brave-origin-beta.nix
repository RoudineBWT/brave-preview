{ callPackage, fetchurl }:
let
  version = "1.99.53";
  hash = "0601vbif3l21c1svh9z5gp0lhwmy4w723gqp5bfqlhzzkswy0jzk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
