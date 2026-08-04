{ callPackage, fetchurl }:
let
  version = "1.95.39";
  hash = "157cm45242yj3mfknqdhgra9b4n23im2x440az3g17apv52vi8af";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
