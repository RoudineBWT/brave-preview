{ callPackage, fetchurl }:
let
  version = "1.96.2";
  hash = "0dvxns91ljhl9zd637mx8qzmg3n8cncg2wsmhpgbkmr95q386279";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
