{ callPackage, fetchurl }:
let
  version = "1.98.5";
  hash = "0y8hf0qc390qkxmh1hvjxckznv4n6m33ykqgwh99pahr3s26qi1v";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
