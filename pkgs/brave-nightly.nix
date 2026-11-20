{ callPackage, fetchurl }:
let
  version = "1.102.25";
  hash = "1db8dvq1kspfnj9jqhdax7fkq1n5fxyh516gqjskk7csskx7ysdc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
