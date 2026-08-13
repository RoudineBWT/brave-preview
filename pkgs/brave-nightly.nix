{ callPackage, fetchurl }:
let
  version = "1.95.66";
  hash = "065g9yx38bd0b2lwmliffc9hg7jchnjywavc7hxzmdizgpq70za4";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
