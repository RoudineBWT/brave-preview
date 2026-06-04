{ callPackage, fetchurl }:
let
  version = "1.93.32";
  hash = "1cwb4bmjagb4f4v7c00r9z62mxa3n8gjydnnb4v14phni73m64f2";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
