{ callPackage, fetchurl }:
let
  version = "1.92.53";
  hash = "0zjvi7q1ah5459mcrdhmwkh0yd191gnpz5hcznb353wzahgrampn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
