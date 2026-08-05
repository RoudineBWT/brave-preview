{ callPackage, fetchurl }:
let
  version = "1.95.43";
  hash = "1xdqmz44iv3ykjkqfawynhs7hmx86splz08jjhymp13ap62qbfxh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
