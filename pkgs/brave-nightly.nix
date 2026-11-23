{ callPackage, fetchurl }:
let
  version = "1.102.29";
  hash = "1mmrpy0nqfg8nyncdnhr6kw61ran89inas0n3d29yhlpjp63sssc";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
