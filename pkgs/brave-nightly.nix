{ callPackage, fetchurl }:
let
  version = "1.94.40";
  hash = "04h7ba85drqzlqn985q1ysqlv3l0qqb4q66bmyfgwnjbzmz02qzr";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
