{ callPackage, fetchurl }:
let
  version = "1.99.4";
  hash = "0x66phff26g4yd55d6n03im1mchnl0z634na9sbhhsjcg6v2j7xb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
