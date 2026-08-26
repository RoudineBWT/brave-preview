{ callPackage, fetchurl }:
let
  version = "1.96.21";
  hash = "1f9w8q35v9dsmbiz3yl0wzpnxlnv088mn46kc9q853ihizg1v158";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
