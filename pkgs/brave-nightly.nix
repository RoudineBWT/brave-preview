{ callPackage, fetchurl }:
let
  version = "1.97.17";
  hash = "0fairjp6ygy96nf0wwzyvpia9pllhkx60plv809a54rpa7frn0sm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
