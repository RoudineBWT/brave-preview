{ callPackage, fetchurl }:
let
  version = "1.101.39";
  hash = "1ph1mdj8rp10jqlhm3a2hs2xmnpvkaf4xiha6g2y7xphldqq2mda";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
