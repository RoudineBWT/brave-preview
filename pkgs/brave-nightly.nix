{ callPackage, fetchurl }:
let
  version = "1.95.4";
  hash = "1s5v6yja4ljkyn86a9cisnvjzzl1b3rjfjd9ygm34js8qq1d9dly";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
