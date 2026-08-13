{ callPackage, fetchurl }:
let
  version = "1.95.67";
  hash = "13swsrmyqm1zfps9c2znccsf1z60s170ykq4z012pb1qjf26ps6w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
