{ callPackage, fetchurl }:
let
  version = "1.93.75";
  hash = "0kdn65nj130jf7cj4d6rqnxgxhzv4ykmj07626plnfxdaylkjghp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
