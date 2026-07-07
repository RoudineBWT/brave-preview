{ callPackage, fetchurl }:
let
  version = "1.94.46";
  hash = "1li01bxsnh9pi47rv8hslxyh6l8cmkbxy56j204zxadzp8zrsycv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
