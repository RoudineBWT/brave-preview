{ callPackage, fetchurl }:
let
  version = "1.100.2";
  hash = "07g1pls2nrplg7b6pdmzffi1d810h29xkqvmmvhybf61yc5dxcik";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
