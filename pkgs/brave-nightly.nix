{ callPackage, fetchurl }:
let
  version = "1.98.7";
  hash = "0wfxc9lvf0gabvzg6crw0b3f7p0iv2dzd1dlhnn8mcva0wwpvj68";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
