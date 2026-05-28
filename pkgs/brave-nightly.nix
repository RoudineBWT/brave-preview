{ callPackage, fetchurl }:
let
  version = "1.93.4";
  hash = "0r6byh9fdyzx9pgn4ss7fwipwd4rvr1g7201809cx1cfys55bij0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
