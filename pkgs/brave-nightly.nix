{ callPackage, fetchurl }:
let
  version = "1.100.5";
  hash = "0y9q5xdfzhxhlj7xflh6cc3n1mriwd1186aw7w570gwb7y5rj4y6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
