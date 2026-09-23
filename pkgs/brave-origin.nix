{ callPackage, fetchurl }:
let
  version = "1.96.58";
  hash = "0b5v7lmg72djq4n27vgc20nfngbb8yqzyy3ar2jrs90h20l5rr7c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
