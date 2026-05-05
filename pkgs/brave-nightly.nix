{ callPackage, fetchurl }:
let
  version = "1.92.24";
  hash = "1nl7jx32rwikafjn6a2ihp4y1vpd0gcca3q6i2lllaq3gl28jm26";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
