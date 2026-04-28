{ callPackage, fetchurl }:
let
  version = "1.91.121";
  hash = "1rzwa5wfscahq0yhggjs61fgrg5qsfcbinn71dkgrcjn3p1bngsm";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
