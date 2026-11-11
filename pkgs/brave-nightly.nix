{ callPackage, fetchurl }:
let
  version = "1.101.44";
  hash = "11d2fc2sd8c02a8a6c71jb6q5pl9gz9ccmazyymk68d0q430b4dh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
