{ callPackage, fetchurl }:
let
  version = "1.93.82";
  hash = "1jqyp96l9qxshxdjy12rdvmlsga320h3nvrdp3sjicpi6limawx7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
