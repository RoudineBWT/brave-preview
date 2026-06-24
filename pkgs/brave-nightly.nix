{ callPackage, fetchurl }:
let
  version = "1.93.101";
  hash = "0n7dngblmy6pdgwlybhmx9n7sdyavda8yd29ivd026si16wdig09";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
