{ callPackage, fetchurl }:
let
  version = "1.94.5";
  hash = "11acspgbxifnxknr2ix5fq3sd3qbkydggksj1zb6zjs871q4cm8s";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
