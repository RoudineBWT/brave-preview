{ callPackage, fetchurl }:
let
  version = "1.96.31";
  hash = "0sjh3b66x13gmm3zxb73aq940krapimk51i05f24z79ymf7xq1an";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
