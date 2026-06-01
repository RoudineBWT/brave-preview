{ callPackage, fetchurl }:
let
  version = "1.93.14";
  hash = "1vsikri9mdf6xsgbpyr0qwgzfrzlvfffgi8jazv7a9d08fhwzs6b";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
