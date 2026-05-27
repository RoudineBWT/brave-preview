{ callPackage, fetchurl }:
let
  version = "1.92.105";
  hash = "0hsbvz0hn807xvamcm33s3i578r0kd4s8rrzmfvi3vl6b2ap3zmh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
