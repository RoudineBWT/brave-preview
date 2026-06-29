{ callPackage, fetchurl }:
let
  version = "1.94.12";
  hash = "0r5ffirmw1g02cph16330xrpfm62w007a52j375f0h52y662wwyz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
