{ callPackage, fetchurl }:
let
  version = "1.96.25";
  hash = "168v66fdrdlwx8ab8lj6ijva175238rj8spvs2jsjhdh35vmbh0m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
