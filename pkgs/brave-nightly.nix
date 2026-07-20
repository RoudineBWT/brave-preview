{ callPackage, fetchurl }:
let
  version = "1.94.85";
  hash = "00na2kqayc74pxrp5ia3ki2dmlri03jbdqayhkazqy70rcwai11n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
