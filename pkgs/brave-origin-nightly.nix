{ callPackage, fetchurl }:
let
  version = "1.101.40";
  hash = "1d90rjl52rbqvad5lwaksrsjgyxyhjk7p66a0dxdcasls63xybnv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-nightly_${version}_amd64.deb";
}
