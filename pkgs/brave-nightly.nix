{ callPackage, fetchurl }:
let
  version = "1.94.34";
  hash = "00s016fbkzddmy9g1z4j4f5dgpk6xnwh8sl3s1byyzwqbwczg3dy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
