{ callPackage, fetchurl }:
let
  version = "1.97.39";
  hash = "10yjysq49s9vvhdk22pkpmymv5k193690zyi51bzljsvpvycmmd4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
