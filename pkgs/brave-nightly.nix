{ callPackage, fetchurl }:
let
  version = "1.102.6";
  hash = "1v4bw61xk10x2kqv3d55n29nvq9b0dmhdzbkmglzmrgh9gjbhhcg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
