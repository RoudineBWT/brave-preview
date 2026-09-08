{ callPackage, fetchurl }:
let
  version = "1.97.16";
  hash = "0bha271m41lx1fjhj5ygsd5f47bcspjq1xd182rqx6czqmydlaqv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
