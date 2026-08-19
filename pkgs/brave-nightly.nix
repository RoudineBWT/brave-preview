{ callPackage, fetchurl }:
let
  version = "1.95.86";
  hash = "1kh93x33kaa2azk3ab793gbf6cszxfsm79yxnw0k4f5pq7jp535c";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
