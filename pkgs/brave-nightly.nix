{ callPackage, fetchurl }:
let
  version = "1.99.20";
  hash = "0fpqk9sd9vqrc5f7qyxdqximz7azzd2hhfglyx89pzh4a4d1s6zc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
