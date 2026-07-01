{ callPackage, fetchurl }:
let
  version = "1.94.25";
  hash = "16dd41m0v3la3y6pgd38fl4771pzirrf5h0a55s6n7jq7s5qb1h7";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
