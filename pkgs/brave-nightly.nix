{ callPackage, fetchurl }:
let
  version = "1.93.52";
  hash = "1i2ln08gfqj2z7aid4az4xlzlz5310k49ij4jlgm2kk1ss060lbz";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
