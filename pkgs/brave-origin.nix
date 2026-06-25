{ callPackage, fetchurl }:
let
  version = "1.92.130";
  hash = "0aya0gymhdif3rflmm5liynrhi26fb4m1pgr7x5z75aiwvdsxzcb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
