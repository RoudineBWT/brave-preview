{ callPackage, fetchurl }:
let
  version = "1.93.64";
  hash = "1yzdcrgbwsk5gmh9xdg0rcw8wijrlb3ir12b1bafxz64w9cs9w6d";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
