{ callPackage, fetchurl }:
let
  version = "1.92.18";
  hash = "1ryfgr4hlh6b6c4mnng7dny4nw1ljxvapsb7h8q4jsl0msls64y3";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
