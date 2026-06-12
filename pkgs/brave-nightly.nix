{ callPackage, fetchurl }:
let
  version = "1.93.61";
  hash = "0sqq8cwxki6ypcdi846xsadna97jsinqq4xh71jjzg6falsglqpg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
