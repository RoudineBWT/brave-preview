{ callPackage, fetchurl }:
let
  version = "1.95.2";
  hash = "1bx8aks6vx08hl6pqzpa9z1waz5fhmrsvwbbra9qaa4440dq6wn0";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
