{ callPackage, fetchurl }:
let
  version = "1.96.10";
  hash = "0rrj7ffmq1y0dn283bb3aji8sv5whsih6fq757nikrn94k8ky0dm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
