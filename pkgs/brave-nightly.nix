{ callPackage, fetchurl }:
let
  version = "1.94.50";
  hash = "0alhrbhah7gcl7ppkzsk601qqwrwdwafihg78s3pd9ccam3hg4gp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
