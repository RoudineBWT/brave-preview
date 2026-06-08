{ callPackage, fetchurl }:
let
  version = "1.93.38";
  hash = "1zbyiqlrkg1gs7jipdmwwfh406jr5kdjw7kif80xhmhnrk39fnyf";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
