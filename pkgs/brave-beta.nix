{ callPackage, fetchurl }:
let
  version = "1.93.114";
  hash = "1wf3p969s2iby3a6lrjfz551q62xh42dv5czmbam84r0ypfz2mkq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
