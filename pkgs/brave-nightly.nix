{ callPackage, fetchurl }:
let
  version = "1.93.30";
  hash = "17nwzsj65dg4vjya6yvbcvpzva6bhycajfhglqd6fbjp9df729fc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
