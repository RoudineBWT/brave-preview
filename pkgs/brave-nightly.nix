{ callPackage, fetchurl }:
let
  version = "1.92.49";
  hash = "0bw583g9dk1m64dyjcnqnv4nwv0zhq3ax1lywnmy3vqm0iagrpar";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
