{ callPackage, fetchurl }:
let
  version = "1.101.8";
  hash = "1zxa6zzm36cizh9m25z4sim5p3xxdpwiqldvsj57g2gbbqmzrfhl";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
