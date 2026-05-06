{ callPackage, fetchurl }:
let
  version = "1.92.28";
  hash = "1pfb7h2yhdbw14wagsmrrd413wqkgb91myrg0xary3qsq752l310";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
