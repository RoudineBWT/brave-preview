{ callPackage, fetchurl }:
let
  version = "1.94.48";
  hash = "1fkglva7hl7hd94ly4b633yg1szw0yn28ij78drhv4xxac8ynhwg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
