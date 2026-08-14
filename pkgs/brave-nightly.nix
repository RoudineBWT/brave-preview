{ callPackage, fetchurl }:
let
  version = "1.95.71";
  hash = "1r1ycbn0bsbb7nyg0ln7dgbkpahq48dqk8silx5nd1snbkbln50n";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
