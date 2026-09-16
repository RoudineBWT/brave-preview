{ callPackage, fetchurl }:
let
  version = "1.97.41";
  hash = "12v2vcr71mq7qziha2gfz0nwjv4xd5s10v0zsx63ksrjpgr082gk";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
