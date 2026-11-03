{ callPackage, fetchurl }:
let
  version = "1.101.15";
  hash = "0s2kp058rxjaanh23dcq0rap2vs9jz60511n4zrpp58yzmnln4sj";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
