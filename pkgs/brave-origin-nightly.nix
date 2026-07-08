{ callPackage, fetchurl }:
let
  version = "1.94.47";
  hash = "1cmiqn87qq2366241pq2air63shkgb3jysp5gjpdq7r10vy0sf2w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
