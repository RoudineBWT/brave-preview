{ callPackage, fetchurl }:
let
  version = "1.100.41";
  hash = "1vqx3nxff0h6s6vm19c53v33zph7p330kdfad3dljv2rxv65srs1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
