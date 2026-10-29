{ callPackage, fetchurl }:
let
  version = "1.101.3";
  hash = "01ggdb3mkpmyg51z7m4fgk2dx2xby8zrj79qsmvmvwpz0vfrbw91";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
