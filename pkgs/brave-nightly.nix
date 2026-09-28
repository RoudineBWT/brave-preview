{ callPackage, fetchurl }:
let
  version = "1.98.38";
  hash = "0s7c0j6567vrkki0q6qd2dzk2d74nph7cwapxcraxfn07mvqdqgn";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
