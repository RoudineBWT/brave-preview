{ callPackage, fetchurl }:
let
  version = "1.92.70";
  hash = "11gmiszcvjhq6jnkn63216gdcp3g6bl5gv94bbyn6ccqjsbr7rzc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
