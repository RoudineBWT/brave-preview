{ callPackage, fetchurl }:
let
  version = "1.102.4";
  hash = "03sldf7svzch3v1kmmskvaqisp0m45i3y9g69d81rmk2r6aazqrp";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
