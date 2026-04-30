{ callPackage, fetchurl }:
let
  version = "1.92.4";
  hash = "1a760qbab0q5azscb95ncv3y1bssgbsz8b3qmnbc44p124ypss5i";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
