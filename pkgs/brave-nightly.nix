{ callPackage, fetchurl }:
let
  version = "1.92.85";
  hash = "0gpm0j6f2x7shhryjz9mcaxyl0q1vxhxbscd646dji978n481s46";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
