{ callPackage, fetchurl }:
let
  version = "1.93.80";
  hash = "1y1hjgb8bjbp521ac67977alp1hfl049l1pl64j0lfgzc0ivq7va";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
