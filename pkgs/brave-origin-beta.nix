{ callPackage, fetchurl }:
let
  version = "1.91.139";
  hash = "13i6wsc2n6gp7nxcz5vk9n4qaxqpdzgj8cpi3s3w749aylfhghs7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
