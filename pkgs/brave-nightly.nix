{ callPackage, fetchurl }:
let
  version = "1.91.116";
  hash = "0c01hc5mhi2ac8dxls5dd87c1vkmk3jkyc2jivffzzk08nnp7i4m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
