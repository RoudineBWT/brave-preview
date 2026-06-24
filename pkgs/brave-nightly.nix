{ callPackage, fetchurl }:
let
  version = "1.93.103";
  hash = "1968i4qaffc7d515l81c6dc1kgkpifagax6w1akpbl64fnygxifa";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
