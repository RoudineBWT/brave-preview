{ callPackage, fetchurl }:
let
  version = "1.92.56";
  hash = "1ygdrgi25jsk7s22gh4lk86g182djki75f2m94yv4dwdsh137c1g";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
