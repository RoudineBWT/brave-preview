{ callPackage, fetchurl }:
let
  version = "1.91.105";
  hash = "0a52ddkl2574qdkxrsdx07bz4l7dllvvcszpz8nks9vhgx2hmacc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
