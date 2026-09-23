{ callPackage, fetchurl }:
let
  version = "1.98.24";
  hash = "0v256kxkws3p6w0xbnhrx7fc0d8gbxlx24diclmyf9047qyid500";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
