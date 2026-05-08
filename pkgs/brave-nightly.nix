{ callPackage, fetchurl }:
let
  version = "1.92.41";
  hash = "00yc1ddx7r2mxv0832ymb37qp8jjp25p5hzf1gk6f68q8dln9f3c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
