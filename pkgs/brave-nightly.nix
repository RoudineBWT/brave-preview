{ callPackage, fetchurl }:
let
  version = "1.95.25";
  hash = "1qhxfdbwfk2lzxcb69l4vpgfd59ld5m5dnr66c3cz398ancf000h";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
