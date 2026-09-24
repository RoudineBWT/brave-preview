{ callPackage, fetchurl }:
let
  version = "1.98.27";
  hash = "1bnhac873035ijq0mlwa1y1gxvmxbcy7kwn6d2dpj82c3sdv487h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
