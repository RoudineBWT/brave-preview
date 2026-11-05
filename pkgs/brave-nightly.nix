{ callPackage, fetchurl }:
let
  version = "1.101.30";
  hash = "1zzqhba15dbnapviw193q1p8msip782s7skdcphww4b08wd1imm7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
