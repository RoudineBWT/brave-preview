{ callPackage, fetchurl }:
let
  version = "1.97.14";
  hash = "1i9dj24dr7lgjxlx2ixb1yaa8yiybm26inv9xy57x40dbxfsaw33";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
