{ callPackage, fetchurl }:
let
  version = "1.97.18";
  hash = "1yxkdn03x4vd0mvji0x94g89yimc6r83482040zawbn28q4rncyr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
