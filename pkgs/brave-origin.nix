{ callPackage, fetchurl }:
let
  version = "1.99.56";
  hash = "1bvvcw1aq38zrzf5kbjjyigccv18vm0j5cxk6bypdpmsphsqpadm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
