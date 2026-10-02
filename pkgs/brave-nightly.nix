{ callPackage, fetchurl }:
let
  version = "1.99.7";
  hash = "1z4jyl72dzhl5d0js53bfw877rki9dpcngrzmg8mp3cyhxr4f06x";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
