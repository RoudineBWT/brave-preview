{ callPackage, fetchurl }:
let
  version = "1.99.32";
  hash = "1f06qkxk2rwbw0jp21zaczvgah6spajz6a8xwiwz1s5myzmmws42";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
