{ callPackage, fetchurl }:
let
  version = "1.94.42";
  hash = "1xxrm9ima8gv1kascnc3qv5277xwhv5402hb9g5q7078hvbdxkvi";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
