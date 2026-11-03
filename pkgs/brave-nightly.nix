{ callPackage, fetchurl }:
let
  version = "1.101.20";
  hash = "18x18jddgph93ycrb2vghipn115jai70n6w4iv9qa0xbpdfdfdad";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
