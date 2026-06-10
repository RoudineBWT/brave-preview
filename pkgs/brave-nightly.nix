{ callPackage, fetchurl }:
let
  version = "1.93.49";
  hash = "1lrims0n1l3xlng9h7gcfs0p0i8bcmg7hjb30hjsd4mwcgd4n0ri";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
