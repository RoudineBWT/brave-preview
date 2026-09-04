{ callPackage, fetchurl }:
let
  version = "1.97.4";
  hash = "1bvnmilrqzs3l75zrl1kmwbs6qzbr2z17gazg3h3x9kf7f7iaigk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
