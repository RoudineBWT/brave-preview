{ callPackage, fetchurl }:
let
  version = "1.102.28";
  hash = "0i7szldchc10plx3gi3gds19wbs6sd9hp1g1z0xy9r3s9jgd6hz1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
