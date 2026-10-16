{ callPackage, fetchurl }:
let
  version = "1.100.7";
  hash = "0r9q559xyssm02vi6dbhs0j86mh7nyrv97lzf38qzkw797ij0k8q";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
