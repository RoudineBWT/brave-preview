{ callPackage, fetchurl }:
let
  version = "1.94.28";
  hash = "0mq3p72y2jl5kyfvc090xiq0hirypnr9p4idqi6pqfvf7dncv92w";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
