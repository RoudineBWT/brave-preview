{ callPackage, fetchurl }:
let
  version = "1.93.91";
  hash = "0q2r2pzfa8jlrwjs5a8z15d2apyg59r6jcp7v4hnpg32k35j4nsg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
