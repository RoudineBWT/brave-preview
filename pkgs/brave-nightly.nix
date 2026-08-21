{ callPackage, fetchurl }:
let
  version = "1.96.5";
  hash = "0nyx7ki1qljqia0z53l7pdhzr3szy2mrwf93kdbpgbswv5mgjla1";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
