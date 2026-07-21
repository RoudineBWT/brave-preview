{ callPackage, fetchurl }:
let
  version = "1.94.89";
  hash = "197i50h0imla6j3anamwkcky9v9qjgjbgc9gwf3zx99dhkqrl1f4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
