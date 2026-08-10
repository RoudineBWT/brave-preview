{ callPackage, fetchurl }:
let
  version = "1.95.54";
  hash = "1y1wm3vgqsd5sql0f06y16sd3v1zryfp6kvhz2xm79jmpvlknzs4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
