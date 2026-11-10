{ callPackage, fetchurl }:
let
  version = "1.101.39";
  hash = "1s5szjp1cx9km00qp2nxap8lbcfpa797qyhrxc8igpjmz1vfc9di";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
