{ callPackage, fetchurl }:
let
  version = "1.93.6";
  hash = "0vjh9pn7g9jysyvhjv2sqnv9b3hznxyxwpkhp0p3j3z1davwqvlb";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
