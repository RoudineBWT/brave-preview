{ callPackage, fetchurl }:
let
  version = "1.102.44";
  hash = "0ih6vz9ld8v88ry2znhdrx52naiklcfrlbhrgffrc20hiq2mrkvp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
