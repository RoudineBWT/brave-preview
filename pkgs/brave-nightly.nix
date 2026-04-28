{ callPackage, fetchurl }:
let
  version = "1.91.119";
  hash = "1qgpry32lzc06ibdln0mq3xyxsb58lif0izijcwpx4fhq0krz0j5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
