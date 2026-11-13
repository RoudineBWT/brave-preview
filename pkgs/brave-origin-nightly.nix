{ callPackage, fetchurl }:
let
  version = "1.102.6";
  hash = "1wi0gcjz6hglyv0pjykzvmymnphp5bkarpwmmqs2ivfzv2w9w6i4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
