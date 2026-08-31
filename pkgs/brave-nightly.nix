{ callPackage, fetchurl }:
let
  version = "1.96.33";
  hash = "0cj6q4zgf0zplrpvivbarxlyv2liydf16s2s29g9b5ibh6l1fz1m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
