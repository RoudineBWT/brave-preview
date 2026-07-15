{ callPackage, fetchurl }:
let
  version = "1.94.72";
  hash = "12szz51gg0k8v3ckfsi2garggwkg6i10j5s5s2kpzqrrh26winmh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
