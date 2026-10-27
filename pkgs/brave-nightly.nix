{ callPackage, fetchurl }:
let
  version = "1.100.37";
  hash = "079697x66mr2v260zwcp4wrjvy3afhglnssias4i07wk2mvyvcx5";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
