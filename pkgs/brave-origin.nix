{ callPackage, fetchurl }:
let
  version = "1.98.60";
  hash = "0fg6abpsvwa16inhym9pyljr1fzk44f8dchafzxq1wxs28f5p82l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
