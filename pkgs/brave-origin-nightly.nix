{ callPackage, fetchurl }:
let
  version = "1.99.19";
  hash = "0922qyw7s1l3shw1chdvddx8kxy8a5zb76cylircv6jx9b27p0bx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
