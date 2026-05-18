{ callPackage, fetchurl }:
let
  version = "1.92.70";
  hash = "0ijinbnbxgnxq1yaw4nb3ddzi31yzcims12vfcybr0rx7bwnrp99";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
