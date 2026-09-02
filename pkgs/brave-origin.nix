{ callPackage, fetchurl }:
let
  version = "1.94.119";
  hash = "1lmcq3ydx0by3j8fpvrh7gqfjy4crxgv8ii08297rw452xjjvgdm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
