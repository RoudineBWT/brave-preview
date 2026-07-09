{ callPackage, fetchurl }:
let
  version = "1.94.52";
  hash = "1n2ffkachn9nqdj1qmwpfkjhd1x3brns2a7mxbkn89wa72p8l1jc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
