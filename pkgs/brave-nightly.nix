{ callPackage, fetchurl }:
let
  version = "1.92.61";
  hash = "1s9q12rhg4sqxkfxg65298y8vmajxkfz1al5lnaqkchg5da4dv4l";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
