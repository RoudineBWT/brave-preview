{ callPackage, fetchurl }:
let
  version = "1.102.32";
  hash = "1kh4dlq3hy7qgiwc12j1m5qfdn04kxdnnjvqa7i46zissgxscrkc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
