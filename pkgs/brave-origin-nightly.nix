{ callPackage, fetchurl }:
let
  version = "1.92.16";
  hash = "1w1iyrl9has7b34lvf57vnn3833ddw2ky4irmrq2xhz5yiiyrmnx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
