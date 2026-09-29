{ callPackage, fetchurl }:
let
  version = "1.98.42";
  hash = "1544q4wz0rd19g6969swawfnjqzwnv3fm4g3j7np1z8r7h11jrv0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
