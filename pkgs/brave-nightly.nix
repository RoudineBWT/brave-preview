{ callPackage, fetchurl }:
let
  version = "1.96.1";
  hash = "01iikr9gfldlpa2f1vrigcizl7a3i43m7z5gidxarddhhbyd2638";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
