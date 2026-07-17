{ callPackage, fetchurl }:
let
  version = "1.94.79";
  hash = "13pipdn9hdw256hrj3f6wwf1v1bk2dzzasjcyp553akkbswsgyws";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
