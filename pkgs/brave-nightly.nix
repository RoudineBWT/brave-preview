{ callPackage, fetchurl }:
let
  version = "1.92.12";
  hash = "1klsf8cmbkg1axizmlb7j3wmbcgxnplyi563ir115gcynsfni6zc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
