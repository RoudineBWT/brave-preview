{ callPackage, fetchurl }:
let
  version = "1.96.55";
  hash = "1c5j78161855l9qwal4b4n6r85x3nbjmj4rclcxp1pmpybc8bxgm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
