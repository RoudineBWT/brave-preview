{ callPackage, fetchurl }:
let
  version = "1.95.12";
  hash = "17hq5cp1fpd3snqcdca4sbigvdrkjc8ik3lh4s6cq1gf58z8d8ms";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
