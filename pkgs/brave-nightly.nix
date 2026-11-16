{ callPackage, fetchurl }:
let
  version = "1.102.12";
  hash = "1k6xjiv13f6dj167a6b4vwli8k7wnv7jsdnssavx6w06rj9m7xxc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
