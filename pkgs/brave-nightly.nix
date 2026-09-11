{ callPackage, fetchurl }:
let
  version = "1.97.27";
  hash = "028k7fln7q6kjvm8cga4lniygxan19myna5dzqxifppri50p2j75";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
