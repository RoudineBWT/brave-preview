{ callPackage, fetchurl }:
let
  version = "1.94.87";
  hash = "08girz017l3fk9q90isl7z7f9sydr8xmn00x5n2ha8a88cigh518";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
