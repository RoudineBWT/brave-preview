{ callPackage, fetchurl }:
let
  version = "1.94.83";
  hash = "1zanrsda6r4mqhj2k96vmnrggk7vx6r8ljmiivg16504h1fviksc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
