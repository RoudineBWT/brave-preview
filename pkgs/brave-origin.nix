{ callPackage, fetchurl }:
let
  version = "1.92.137";
  hash = "08vnjd4p6gfkgm6h5ykmdiickihlv5lymhaqx3chindyy5hq9c56";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
