{ callPackage, fetchurl }:
let
  version = "1.96.12";
  hash = "1q4kbfb7a06scx6va9k876p74n29ja9h5jjd6hdkail2nnqrxvqy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
