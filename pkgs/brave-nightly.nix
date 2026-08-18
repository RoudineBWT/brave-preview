{ callPackage, fetchurl }:
let
  version = "1.95.80";
  hash = "0wddrixpjkrm9bhb0avlxk4s9wsczmacsms8bbzbyidfl87f6b9m";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
