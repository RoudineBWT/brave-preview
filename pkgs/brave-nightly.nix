{ callPackage, fetchurl }:
let
  version = "1.97.35";
  hash = "1vi3124hnc3vfmx3whxgxwk4my626f43xd9584lz3b5bgkp669rf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
