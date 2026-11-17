{ callPackage, fetchurl }:
let
  version = "1.102.13";
  hash = "01qs9dm5wgnnas1zkaiyi4xm440dvsblxvq53xxxkbi6krjbivsx";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
