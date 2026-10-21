{ callPackage, fetchurl }:
let
  version = "1.100.21";
  hash = "0rggr3zp6qc1634rf4dfds14pji21m62hp63l5hnc3z6hja2mqak";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
