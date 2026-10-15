{ callPackage, fetchurl }:
let
  version = "1.100.4";
  hash = "1bvq0l3p78fsan1m0gff18hz5v6m2dpbv1yqhgqkg3nwn8bvqsrg";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
