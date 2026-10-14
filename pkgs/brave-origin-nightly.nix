{ callPackage, fetchurl }:
let
  version = "1.99.43";
  hash = "0hbhxl7hzc7yn750jpv70rzjwvdzls6sdhn9991kjg62rqzw10i3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
