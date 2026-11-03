{ callPackage, fetchurl }:
let
  version = "1.101.18";
  hash = "1gkgj8yrxgsnbviw682zwvqfs1axw8wq2hprvi4i6phf3f25cqi6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
