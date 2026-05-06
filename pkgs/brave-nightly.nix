{ callPackage, fetchurl }:
let
  version = "1.92.29";
  hash = "13aq3z1g43v0bk22pjr2jbfxg8yfc33nm2ambh49q807fxicrsjh";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
