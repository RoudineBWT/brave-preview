{ callPackage, fetchurl }:
let
  version = "1.94.93";
  hash = "0lq5di6i7nfvmljgjlsbma20g86h3rhbkvd0z69k7nxpwkgbcs15";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
