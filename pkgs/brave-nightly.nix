{ callPackage, fetchurl }:
let
  version = "1.97.22";
  hash = "16wmwcp6c5pib19cr3pag99s4j915qk5kwirfdy2dv7h50bnj2q6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
