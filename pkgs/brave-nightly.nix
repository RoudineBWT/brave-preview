{ callPackage, fetchurl }:
let
  version = "1.91.111";
  hash = "0ajbwcasbqjnbz56w0xwib2i0az2793y7dlpp10gnq2cdn02pdbh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
