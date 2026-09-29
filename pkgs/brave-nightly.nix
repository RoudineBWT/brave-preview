{ callPackage, fetchurl }:
let
  version = "1.98.40";
  hash = "0a2qd5smv9y60llhw566p87z9373bbqr1mz1511d8fj58kg68yz6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
