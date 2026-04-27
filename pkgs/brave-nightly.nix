{ callPackage, fetchurl }:
let
  version = "1.91.118";
  hash = "08jmwa22jdbv1c0b1bmbipxasnm34jrdr2f5s0c055bfqb1ri750";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
