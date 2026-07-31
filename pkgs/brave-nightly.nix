{ callPackage, fetchurl }:
let
  version = "1.95.27";
  hash = "01bcykhwy554xkp4p89ln08j2x2bpkwqj7w021mynjq5iswj5lzv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
