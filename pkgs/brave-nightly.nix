{ callPackage, fetchurl }:
let
  version = "1.95.50";
  hash = "0knpnayj2g1bfgv0yn5q0k6zzynq2bjkxvip41h2xd6hr1p7vgrn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
