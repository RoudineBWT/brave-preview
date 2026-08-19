{ callPackage, fetchurl }:
let
  version = "1.95.84";
  hash = "099j1pvi3glyjic2ixw692kyvb2qqxn3nzj4x2dkyp1ghr8ybb11";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
