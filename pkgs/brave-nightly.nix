{ callPackage, fetchurl }:
let
  version = "1.102.41";
  hash = "1jp338930kxns36pwb1j7z9mrfl5yc6dzdkzgxmh1dqshr8kricq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
