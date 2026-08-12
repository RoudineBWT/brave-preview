{ callPackage, fetchurl }:
let
  version = "1.93.136";
  hash = "1699lvg13qhi61v9zbqlhg07mg6pfm5b0f60k50yn0s3xsmfafcp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
