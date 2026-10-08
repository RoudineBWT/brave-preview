{ callPackage, fetchurl }:
let
  version = "1.99.25";
  hash = "19ly404ylqc5cgbn9qqzsn215sksplyxmcmf753ashr83mnbvaqf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
