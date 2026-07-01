{ callPackage, fetchurl }:
let
  version = "1.93.109";
  hash = "1spgkqix65kc6axk2ji9vdlvx2vgp3lr6yvv8kiznh601hk7a6db";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
