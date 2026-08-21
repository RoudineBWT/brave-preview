{ callPackage, fetchurl }:
let
  version = "1.96.6";
  hash = "131iav0hq5j6h9xpqkmg7vyyxvnhf078jmaavycynm9qhkawi8ja";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
