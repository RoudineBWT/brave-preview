{ callPackage, fetchurl }:
let
  version = "1.92.118";
  hash = "0xrv1q37x3cz1kjr8i4zc09yjwc6gpxayyn0g5s1gnr96gcrzvxr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
