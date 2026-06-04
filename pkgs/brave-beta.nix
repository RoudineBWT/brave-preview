{ callPackage, fetchurl }:
let
  version = "1.92.114";
  hash = "1fmi4vs8kzkd4nkca344lw1zp5gia7ilblbz57p1l6g6lbmhx14m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
