{ callPackage, fetchurl }:
let
  version = "1.94.109";
  hash = "06f0nnyrlyjp4xb48kmma46vywwn87ib8gwwav32l15iwxn1qjav";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
