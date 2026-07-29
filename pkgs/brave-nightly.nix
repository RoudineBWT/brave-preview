{ callPackage, fetchurl }:
let
  version = "1.95.18";
  hash = "05gc6r38incji7mz25vpzkxd2f9khj7sr5cgzfksyry0asy8ddbh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
