{ callPackage, fetchurl }:
let
  version = "1.92.91";
  hash = "0ywhyjq45fpydhl7xxalqlfr2cpw7wqfalajkql40pr4jsaihy5a";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
